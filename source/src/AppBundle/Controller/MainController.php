<?php

namespace AppBundle\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpKernel\HttpKernelInterface;

class MainController extends Controller
{
    /**
     * @param boolean $isUbuntu Set in UserAgentSubscriber
     * @return \Symfony\Component\HttpFoundation\Response
     */
    public function homepageAction($isUbuntu)
    {
        /*
        $request = new Request();
        $request->attributes->set(
            '_controller',
            'AppBundle:Main:_latestTweets'
        );
        $httpKernel = $this->get('http_kernel');
        $response = $httpKernel->handle(
            $request,
            HttpKernelInterface::SUB_REQUEST
        );
        */

        return $this->render('main/homepage.html.twig', [
            'isUbuntu' => $isUbuntu,
        ]);
    }

    /**
     * Sun request action, only fragment of HTML returned
     */
    public function _latestTweetsAction($onUbuntu)
    {
        $tweets = [
            'Tweet 1',
            'Tweet 2',
            'Tweet 3',
            'Tweet 4',
        ];

        return $this->render('main/_latestTweets.html.twig', [
            'tweets' => $tweets,

            'isUbuntu' => $onUbuntu,
        ]);
    }
}