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

    /**
     * @Route("/activeAccount/{id}", name="activeAccount")
     */
    public function activeAccount(EntityManagerInterface $em, $id)
    {
        if ($this->getUser()) {
            $user = $em->getRepository(User::class)->findOneById($id);
            $user->setIsActive(true);
            $em->persist($user);
            $em->flush();
            return $this->redirectToRoute('index');
        }
    }

    /**
     * @Route("/deactiveAccount/{id}", name="deactiveAccount")
     */
    public function deactiveAccount(EntityManagerInterface $em, $id)
    {
        if ($this->getUser()) {
            $user = $em->getRepository(User::class)->findOneById($id);
            $user->setIsActive(false);
            $em->persist($user);
            $em->flush();
            return $this->redirectToRoute('index');
        }
    }
}
