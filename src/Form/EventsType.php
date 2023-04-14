<?php

namespace App\Form;

use App\Entity\Events;
use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;

class EventsType extends AbstractType
{
    public function buildForm(FormBuilderInterface $builder, array $options): void
    {
        $builder
            ->add('name', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('time', null, array("attr"=>["class"=>" mb-2 "]))
            ->add('description', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('image', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('capacity', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('email', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('phone', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('address', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('zip', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('city', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('link', null, array("attr"=>["class"=>"form-control mb-2 "]))
            ->add('type', ChoiceType::class, ['choices' => [
                'Music' => 'music',
                'Charity' => 'charity',
                'Sport' => 'sport',
                'Community' => 'community',
                'Movie' => 'movie',
                'Art' => 'art'
            ],"attr"=>[ "class"=>"mb-2"]])
        ;
    }

    public function configureOptions(OptionsResolver $resolver): void
    {
        $resolver->setDefaults([
            'data_class' => Events::class,
        ]);
    }
}
