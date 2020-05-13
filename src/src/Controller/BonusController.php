<?php

namespace App\Controller;

use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\Routing\Annotation\Route;
use Symfony\Component\HttpClient\HttpClient;

class BonusController extends AbstractController
{
    /**
     * @Route("/bonus", name="bonus")
     */
    public function index()
    {
        $client = HttpClient::create();
        $response = $client->request('GET', 'https://api.github.com/repos/symfony/symfony/issues?per_page=10');
        $statusCode = $response->getStatusCode();
        $contentType = $response->getHeaders()['content-type'][0];
        $issues = $response->getContent();
        $issues = $response->toArray();

        return $this->render('bonus/index.html.twig', [
            'current_menu' => 'bonus',
            'issues' => $issues
        ]);
    }
}
