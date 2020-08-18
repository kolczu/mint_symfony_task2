<?php

namespace App\Controller;

use App\Entity\User;
use Doctrine\ORM\EntityManagerInterface;
use Knp\Component\Pager\PaginatorInterface;
use Symfony\Bundle\FrameworkBundle\Controller\AbstractController;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\Routing\Annotation\Route;

class UserController extends AbstractController
{
    /**
     * @Route("/index", name="index")
     */
    public function index(EntityManagerInterface $em,
                          PaginatorInterface $paginator,
                          Request $request)
    {
        $repo = $em->getRepository(User::class);

        return $this->render('index/index.html.twig', [
            'pagination' => $paginator->paginate(
                $repo->findAll(),
                $request->query->getInt('page', 1),
                10)
        ]);
    }
}
