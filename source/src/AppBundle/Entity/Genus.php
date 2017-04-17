<?php

namespace AppBundle\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\ORM\Mapping as ORM;

/**
 * Genus
 *
 * @ORM\Table(name="genus")
 * @ORM\Entity
 */
class Genus
{
    /**
     * @var string
     *
     * @ORM\Column(name="name", type="string", length=255, nullable=true)
     */
    private $name;

    /**
     * @var string
     *
     * @ORM\Column(name="sub_family", type="string", length=255, nullable=true)
     */
    private $subFamily;

    /**
     * @var integer
     *
     * @ORM\Column(name="species_count", type="integer", nullable=true)
     */
    private $speciesCount;

    /**
     * @var string
     *
     * @ORM\Column(name="fun_fact", type="string", length=255, nullable=true)
     */
    private $funFact;

    /**
     * @var boolean
     *
     * @ORM\Column(name="is_published", type="boolean", nullable=false)
     */
    private $isPublished;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;


    /**
     * Genus constructor.
     */
    public function __construct()
    {
        $this->isPublished = true;
    }

    /**
     * Set name
     *
     * @param string $name
     *
     * @return Genus
     */
    public function setName($name)
    {
        $this->name = $name;

        return $this;
    }

    /**
     * Get name
     *
     * @return string
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * Set subFamily
     *
     * @param string $subFamily
     *
     * @return Genus
     */
    public function setSubFamily($subFamily)
    {
        $this->subFamily = $subFamily;

        return $this;
    }

    /**
     * Get subFamily
     *
     * @return string
     */
    public function getSubFamily()
    {
        return $this->subFamily;
    }

    /**
     * Set speciesCount
     *
     * @param integer $speciesCount
     *
     * @return Genus
     */
    public function setSpeciesCount($speciesCount)
    {
        $this->speciesCount = $speciesCount;

        return $this;
    }

    /**
     * Get speciesCount
     *
     * @return integer
     */
    public function getSpeciesCount()
    {
        return $this->speciesCount;
    }

    /**
     * Set funFact
     *
     * @param string $funFact
     *
     * @return Genus
     */
    public function setFunFact($funFact)
    {
        $this->funFact = $funFact;

        return $this;
    }

    /**
     * Get funFact
     *
     * @return string
     */
    public function getFunFact()
    {
        return $this->funFact;
    }

    /**
     * Set isPublished
     *
     * @param boolean $isPublished
     *
     * @return Genus
     */
    public function setIsPublished($isPublished)
    {
        $this->isPublished = $isPublished;

        return $this;
    }

    /**
     * Get isPublished
     *
     * @return boolean
     */
    public function getIsPublished()
    {
        return $this->isPublished;
    }

    /**
     * Get id
     *
     * @return integer
     */
    public function getId()
    {
        return $this->id;
    }

    public function getUpdatedAt()
    {
        return new \DateTime();
    }
}
