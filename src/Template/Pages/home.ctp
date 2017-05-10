<?php
/**
 * CakePHP(tm) : Rapid Development Framework (http://cakephp.org)
 * Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 *
 * Licensed under The MIT License
 * For full copyright and license information, please see the LICENSE.txt
 * Redistributions of files must retain the above copyright notice.
 *
 * @copyright     Copyright (c) Cake Software Foundation, Inc. (http://cakefoundation.org)
 * @link          http://cakephp.org CakePHP(tm) Project
 * @since         0.10.0
 * @license       http://www.opensource.org/licenses/mit-license.php MIT License
 */

$cakeDescription = 'CakePHP: the rapid development php framework';
?>
<!DOCTYPE html>
<html>
<head>
    <?= $this->Html->charset() ?>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>
        <?= $cakeDescription ?>:
        <?= $this->fetch('title') ?>
    </title>
    <?= $this->Html->meta('icon') ?>

    <?= $this->Html->css('base') ?>
    <?= $this->Html->css('cake') ?>

    <!--Bootstrap-->
    <?= $this->Html->script('jquery') ?>
    <?= $this->Html->script('tether') ?>
    <?= $this->Html->script('bootstrap') ?>
    <?= $this->Html->css('bootstrap') ?>
    <?= $this->Html->css('app') ?>

    <?= $this->Html->script('scripts') ?>

    <?= $this->fetch('meta') ?>
    <?= $this->fetch('css') ?>
    <?= $this->fetch('script') ?>
</head>
<body>

<div class="sub-nav">
  <ul class="right">
    <?php if($loggedIn) : ?>
          <!--Current User -->
          <li><?= $this->Html->link('Profile', array('controller' => 'users', 'action' => 'view', $authUser['id'])) ?>  </li>
          <li><?= $this->Html->link('Logout', ['controller' => 'users', 'action' => 'logout']); ?></li>
      <?php else : ?>
          <li><?= $this->Html->link('Register', ['controller' => 'users', 'action' => 'register']); ?></li>
      <?php endif; ?>
  </ul>
</div>

    <?= $this->Flash->render() ?>
    <div class="container clearfix">
        <?= $this->fetch('content') ?>
    </div>
    <footer>
    </footer>
</body>
</html>
