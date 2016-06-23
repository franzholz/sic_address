<?php
namespace SICOR\SicAddress\Userfuncs;

/***************************************************************
 *
 *  Copyright notice
 *
 *  (c) 2014 DEV Team <dev@sicor-kdl.net>, SICOR KDL GmbH
 *
 *  All rights reserved
 *
 *  This script is part of the TYPO3 project. The TYPO3 project is
 *  free software; you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation; either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  The GNU General Public License can be found at
 *  http://www.gnu.org/copyleft/gpl.html.
 *
 *  This script is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 *
 *  This copyright notice MUST APPEAR in all copies of the script!
 ***************************************************************/

class Tca {

    public function addressTitle(&$parameters, $parentObject) {
        //$addressRecord = \TYPO3\CMS\Backend\Utility\BackendUtility::getRecord($parameters['table'], $parameters['row']['uid']);

        $extbaseObjectManager = \TYPO3\CMS\Core\Utility\GeneralUtility::makeInstance('TYPO3\\CMS\\Extbase\\Object\\ObjectManager');
        $domainPropertyRepository = $extbaseObjectManager->get('SICOR\\SicAddress\\Domain\\Repository\\DomainPropertyRepository');

        \TYPO3\CMS\Extbase\Utility\DebuggerUtility::var_dump("TEST");

        $domainProperties = $domainPropertyRepository->findAll();
        foreach($domainProperties as $key => $value) {

            \TYPO3\CMS\Extbase\Utility\DebuggerUtility::var_dump($value);

            if($value["isListLabel"]) {
                $parameters['title'] .= $value["title"];
            }
        }
    }
}