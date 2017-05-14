<?php

namespace AppBundle\EventListener;

use Psr\Log\LoggerInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpKernel\Event\GetResponseEvent;
use Symfony\Component\HttpKernel\Event\KernelEvent;
use Symfony\Component\HttpKernel\KernelEvents;

/**
 * Must be registered as service to hook on Symfony Events
 *
 * Class UserAgentSubscriber
 * @package AppBundle\EventListener
 */
class UserAgentSubscriber implements EventSubscriberInterface
{
    /**
     * @var LoggerInterface
     */
    private $logger;

    /**
     * UserAgentSubscriber constructor.
     * @param LoggerInterface $logger
     */
    public function __construct(LoggerInterface $logger)
    {
        $this->logger = $logger;
    }


    /**
     * Event is passed automatically to this method.
     * Every event gives different event object.
     *
     * @param GetResponseEvent $event
     */
    public function onKernelRequest($event)
    {
        $this->logger->info('From kernel.request event subscriber');
        $request = $event->getRequest();
        $userAgent = $request->headers->get('User-Agent');
        $this->logger->info('The user agent is: ' . $userAgent);

//        if (rand(0,100) > 50) {
//            $response = new Response('Be right back.');
//            $event->setResponse($response);
//        }

        // Add REQUEST ATTRIBUTE
        $isUbuntu = stripos($userAgent, 'Ubuntu') !== false;
        $request->attributes->set('isUbuntu', $isUbuntu);
    }


    /**
     * When kernel.request is triggered, execute onKernelRequest method
     *
     * @return array
     */
    public static function getSubscribedEvents()
    {
        return [
          // 'kernel.request'
          KernelEvents::REQUEST => 'onKernelRequest'
        ];
    }
}