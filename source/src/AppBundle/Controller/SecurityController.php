<?php

namespace AppBundle\Controller;

use AppBundle\Form\LoginForm;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;

class SecurityController extends Controller
{
    /**
     * @Route("/login", name="security_login")
     * @Method("GET")
     */
    public function loginAction()
    {
        $authenticationUtils = $this->get('security.authentication_utils');

        // Get the login error if there is one
        $error = $authenticationUtils->getLastAuthenticationError();

        // Last username entered by the user (see getUsername method in User Entity)
        $lastUsername = $authenticationUtils->getLastUsername();

        $form = $this->createForm(LoginForm::class, [
            '_username' => $lastUsername
        ]);

        return $this->render('security/login.html.twig', array(
            'form'  => $form->createView(),
            'error' => $error,
        ));
    }


//    /**
//     * @Route("/register", name="user_register")
//     * @Method("GET")
//     */
//    public function registerAction()
//    {
//
//    }
}
