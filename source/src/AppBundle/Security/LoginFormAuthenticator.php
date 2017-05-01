<?php

namespace AppBundle\Security;

use AppBundle\Form\LoginForm;
use Doctrine\ORM\EntityManager;
use Symfony\Component\Form\FormFactoryInterface;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\RouterInterface;
use Symfony\Component\Security\Core\Exception\AuthenticationException;
use Symfony\Component\Security\Core\Security;
use Symfony\Component\Security\Core\User\UserInterface;
use Symfony\Component\Security\Core\User\UserProviderInterface;
use Symfony\Component\Security\Guard\Authenticator\AbstractFormLoginAuthenticator;

class LoginFormAuthenticator extends AbstractFormLoginAuthenticator
{
    private $formFactory;
    private $em;
    private $router;

    public function __construct(FormFactoryInterface $formFactory, EntityManager $em, RouterInterface $router)
    {
        $this->formFactory = $formFactory;
        $this->em = $em;
        $this->router = $router;
    }


    /**
     * Step 1: If user submitted login form, get his credentials
     *
     * @param Request $request
     *
     * @return array|null
     */
    public function getCredentials(Request $request)
    {
        $isLoginSubmit = $request->getPathInfo() == '/login' && $request->isMethod('post');
        if (!$isLoginSubmit) {
            // No Authentication
            return;
        }

        $form = $this->formFactory->create(LoginForm::class);

        //
        $form->handleRequest($request);

        $data = $form->getData();

        // On auth error, email will be pre-filled in form
        $request->getSession()->set(
            Security::LAST_USERNAME,
            $data['_username']
        );

        return $data;
    }


    /**
     * Step 2: If nul returned from getCredentials, authentication is skipped.
     * Otherwise, this method is called.
     *
     * You may throw an AuthenticationException if you wish. If you return
     * null, then a UsernameNotFoundException is thrown for you.
     *
     * @param mixed $credentials // Data returned from getCredentials method
     * @param UserProviderInterface $userProvider
     *
     * @throws AuthenticationException
     *
     * @return UserInterface|null
     */
    public function getUser($credentials, UserProviderInterface $userProvider)
    {
        $username = $credentials['_username']; // In our case, it is email
        //
        return $this->em->getRepository('AppBundle:User')->findOneBy(['email' => $username]);
    }


    /**
     * Step3: If null is returned from getUser, Guard fails.
     * Otherwise, this method is called. Validation is performed here!
     *
     * @param mixed $credentials
     * @param UserInterface $user
     *
     * @return bool
     *
     * @throws AuthenticationException
     */
    public function checkCredentials($credentials, UserInterface $user)
    {
        $password = $credentials['_password'];

        if ($password == 'password') {
            return true;
        }

        return false;
    }


    /**
     * Step 4: Return the URL to the login page (used if auth fails)
     *
     * @return string
     */
    protected function getLoginUrl()
    {
        return $this->router->generate('security_login');
    }


    /**
     * Step 4: Return path to redirect to (if auth is successful).
     *
     * Here, user is redirected back to last page he tried to visit automatically!
     * If nowhere to redirect user back, user is redirected to specified route (returned value below).
     *
     * @return string
     */
    protected function getDefaultSuccessRedirectUrl()
    {
        return $this->router->generate('homepage');
    }
}
