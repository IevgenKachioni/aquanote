<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;

class MainController extends Controller
{
    /**
     * @param boolean $isUbuntu Set in UserAgentSubscriber
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function homepageAction($isUbuntu)
    {
        return $this->render('main/homepage.html.twig', [
            'isUbuntu' => $isUbuntu,
        ]);
    }
}