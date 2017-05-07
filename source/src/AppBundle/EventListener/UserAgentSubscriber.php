<?php

namespace AppBundle\EventListener;

use Psr\Log\LoggerInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

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


    public function onKernelRequest()
    {
        $this->logger->info('From kernel.request event subscriber');
    }


    /**
     * When kernel.request is triggered, execute onKernelRequest method
     *
     * @return array
     */
    public static function getSubscribedEvents()
    {
        return [
          'kernel.request' => 'onKernelRequest'
        ];
    }
}