<?php

namespace AppBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * GenusNote
 *
 * @ORM\Table(name="genus_note", indexes={@ORM\Index(name="fk_genus_note_genus_idx", columns={"genus_id"})})
 * @ORM\Entity
 */
class GenusNote
{
    /**
     * @var string
     *
     * @ORM\Column(name="username", type="string", length=255, nullable=true)
     */
    private $username;

    /**
     * @var string
     *
     * @ORM\Column(name="user_avatar_filename", type="string", length=255, nullable=true)
     */
    private $userAvatarFilename;

    /**
     * @var string
     *
     * @ORM\Column(name="note", type="text", length=65535, nullable=true)
     */
    private $note;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="created_at", type="datetime", nullable=true)
     */
    private $createdAt;

    /**
     * @var integer
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="IDENTITY")
     */
    private $id;

    /**
     * Many GenusNote to one Genus
     * Main side of ManyToOne relationship
     *
     * inversedBy="notes" - refers to 'notes' property in Genus
     *
     * @var \AppBundle\Entity\Genus
     *
     * @ORM\ManyToOne(targetEntity="AppBundle\Entity\Genus", inversedBy="notes")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="genus_id", referencedColumnName="id")
     * })
     */
    private $genus;



    /**
     * Set username
     *
     * @param string $username
     *
     * @return GenusNote
     */
    public function setUsername($username)
    {
        $this->username = $username;

        return $this;
    }

    /**
     * Get username
     *
     * @return string
     */
    public function getUsername()
    {
        return $this->username;
    }

    /**
     * Set userAvatarFilename
     *
     * @param string $userAvatarFilename
     *
     * @return GenusNote
     */
    public function setUserAvatarFilename($userAvatarFilename)
    {
        $this->userAvatarFilename = $userAvatarFilename;

        return $this;
    }

    /**
     * Get userAvatarFilename
     *
     * @return string
     */
    public function getUserAvatarFilename()
    {
        return $this->userAvatarFilename;
    }

    /**
     * Set note
     *
     * @param string $note
     *
     * @return GenusNote
     */
    public function setNote($note)
    {
        $this->note = $note;

        return $this;
    }

    /**
     * Get note
     *
     * @return string
     */
    public function getNote()
    {
        return $this->note;
    }

    /**
     * Set createdAt
     *
     * @param \DateTime $createdAt
     *
     * @return GenusNote
     */
    public function setCreatedAt($createdAt)
    {
        $this->createdAt = $createdAt;

        return $this;
    }

    /**
     * Get createdAt
     *
     * @return \DateTime
     */
    public function getCreatedAt()
    {
        return $this->createdAt;
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

    /**
     * Set genus
     *
     * @param \AppBundle\Entity\Genus $genus
     *
     * @return GenusNote
     */
    public function setGenus(\AppBundle\Entity\Genus $genus = null)
    {
        $this->genus = $genus;

        return $this;
    }

    /**
     * Get genus
     *
     * @return \AppBundle\Entity\Genus
     */
    public function getGenus()
    {
        return $this->genus;
    }
}
