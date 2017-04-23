<?php

namespace AppBundle\Controller;

use AppBundle\Entity\Genus;
use AppBundle\Entity\GenusNote;
use AppBundle\Service\MarkdownTransformer;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\JsonResponse;
use Symfony\Component\HttpFoundation\Response;

/**
 * Genus controller
 *
 * @Route("/genus")
 */
class GenusController extends Controller
{
    /**
     * List all genuses
     *
     * @Route("/")
     * @Method("GET")
     */
    public function listAction()
    {
        $em = $this->getDoctrine()->getManager();

        $genuses = $em->getRepository('AppBundle:Genus')->findAllPublishedOrderedBySize();

        return $this->render('genus/list.html.twig', [
            'genuses' => $genuses
        ]);
    }


    /**
     * @Route("/new", name="genus_new")
     * @Method("GET")
     */
    public function newAction()
    {
        $em = $this->getDoctrine()->getManager();

        $genus = new Genus();
        $genus->setName('Octopus'.rand(1, 100));
        $genus->setSubFamily('Octopodinae');
        $genus->setSpeciesCount(rand(100, 40000));

        $genusNote = new GenusNote();
        $genusNote->setUsername('AquaWeaver');
        $genusNote->setUserAvatarFilename('ryan.jpeg');
        $genusNote->setNote('I counted 8 legs...');
        $genusNote->setCreatedAt(new \DateTime('-1 month'));
        $genusNote->setGenus($genus);

        $em->persist($genus);
        $em->persist($genusNote); // persisting order is not important
        $em->flush();

        return new Response('<html><body>Genus created!</body></html>');
    }


    /**
     * @Route("/show/{genusName}", name="genus_show")
     * @Method("GET")
     */
    public function showAction($genusName)
    {
        $em = $this->getDoctrine()->getManager();

        $genus = $em->getRepository('AppBundle:Genus')->findOneBy(['name' => $genusName]);

        if (!$genus) {
            throw $this->createNotFoundException('Genus not found');
        }

//        $transformer = new MarkdownTransformer(
//            $this->get('markdown.parser')
//        );
        $transformer = $this->get('app.markdown_transformer');
        $funFact = $transformer->parse($genus->getFunFact());

//        $cache = $this->get('doctrine_cache.providers.my_markdown_cache');
//        $key = md5($funFact);
//        if ($cache->contains($key)) {
//            $funFact = $cache->fetch($key);
//        } else {
//            //sleep(2);
//            $funFact = $this->get('markdown.parser')->transform($funFact);
//            $cache->save($key, $funFact);
//        }

//        $genusNotes = $em->getRepository('AppBundle:GenusNote')->findBy(['genus' => $genus]);
        $genusNotes = $em->getRepository('AppBundle:GenusNote')->findAllRecentNotesForGenus($genus );

        return $this->render('genus/show.html.twig', array(
            'genus' => $genus,
            'funFact' => $funFact,
            'genusNotes' => $genusNotes
        ));
    }


//    /**
//     * @Route("/{genusName}/notes", name="genus_show_notes")
//     * @Method("GET")
//     */
//    public function getNotesAction()
//    {
//        $notes = [
//            ['id' => 1, 'username' => 'AquaPelham', 'avatarUri' => '/images/leanna.jpeg', 'note' => 'Octopus asked me a riddle, outsmarted me', 'date' => 'Dec. 10, 2015'],
//            ['id' => 2, 'username' => 'AquaWeaver', 'avatarUri' => '/images/ryan.jpeg', 'note' => 'I counted 8 legs... as they wrapped around me', 'date' => 'Dec. 1, 2015'],
//            ['id' => 3, 'username' => 'AquaPelham', 'avatarUri' => '/images/leanna.jpeg', 'note' => 'Inked!', 'date' => 'Aug. 20, 2015'],
//        ];
//        $data = [
//            'notes' => $notes
//        ];
//
//        return new JsonResponse($data);
//    }
}
