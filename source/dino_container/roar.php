<?php

namespace Dino\Play;

use Monolog\Handler\StreamHandler;
use Monolog\Logger;
use Symfony\Component\DependencyInjection\ContainerBuilder;
use Symfony\Component\DependencyInjection\Definition;
use Symfony\Component\DependencyInjection\Reference;

require __DIR__.'/../vendor/autoload.php';

// Container BUILDER
$container = new ContainerBuilder();


// Logger
$loggerDefinition = new Definition('Monolog\Logger');
$loggerDefinition->setArguments(array(
   'main',
    array(
        new Reference('logger.stream_handler')
    )
));

$loggerDefinition->addMethodCall('pushHandler', [
    new Reference('logger.std_out_logger')
]);
$loggerDefinition->addMethodCall('debug', [
    'The logger just got started'
]);

$container->setDefinition('logger', $loggerDefinition);

// StreamHandler (to file)
$handlerDefinition = new Definition('Monolog\Handler\StreamHandler');
$handlerDefinition->setArguments(array(
    __DIR__.'/dino.log'
));
$container->setDefinition('logger.stream_handler', $handlerDefinition);

// StreamHandler (to console)
$stdOutLoggerDefinition = new Definition('Monolog\Handler\StreamHandler');
$stdOutLoggerDefinition->setArguments(array(
    'php://stdout'
));
$container->setDefinition('logger.std_out_logger', $stdOutLoggerDefinition);


runApp($container);

function runApp(ContainerBuilder $container)
{
    $container->get('logger')->info('Rooar 5');
}


