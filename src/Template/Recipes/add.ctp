<?php
/**
  * @var \App\View\AppView $this
  */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('List Recipes'), ['action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('List Users'), ['controller' => 'Users', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New User'), ['controller' => 'Users', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Recipes Versions'), ['controller' => 'RecipesVersions', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Recipes Version'), ['controller' => 'RecipesVersions', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Steps'), ['controller' => 'Steps', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Step'), ['controller' => 'Steps', 'action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Ingredients'), ['controller' => 'Ingredients', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Ingredient'), ['controller' => 'Ingredients', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="recipes form large-9 medium-8 columns content">
    <?= $this->Form->create($recipe) ?>
    <fieldset>
        <legend><?= __('Add Recipe') ?></legend>
        <?php
            echo $this->Form->create($recipe);
            //grabs the current user and hides the input
            echo $this->Form->hidden('user_id', array('value'=>$authUser['id']));
            echo $this->Form->control('name', ['label' => false, 'placeholder' => 'Recipe Title']);
            echo $this->Form->control('description', ['label' => false, 'placeholder' => 'Recipe Description']);

            ?>
            <div id="info"></div>
              <?php echo $this->Form->input("steps.i.description"); ?>
              <a href = 'add/' id='addInfo'></a>
            <!--this button adds a text field-->
            <div id="demo">
              <p>Method</p>
              <div id="more"><button type="button">+</button></div>
              <p id='input'></p>
            </div>
            <?php
            echo $this->Form->control("steps.0.description", ['label' => "Method", 'placeholder' => 'Step 1']);
            echo $this->Form->hidden("steps.0.position", ['label' => false, 'value' => '1']);
            echo $this->Form->control("steps.1.description", ['label' => false, 'placeholder' => 'Step 2']);
            echo $this->Form->hidden("steps.1.position", ['label' => false, 'value' => '2']);

            //Ingredients can wait
            //echo $this->Form->control("Recipes.Ingredients.0.description", ['label' => false, 'placeholder' => 'Recipe Description']);
            //echo $this->Form->control("Recipes.Ingredients.1.description", ['label' => false, 'placeholder' => 'Recipe Description']);
        ?>
    </fieldset>
    <?= $this->Form->button(__('Submit')) ?>
    <?= $this->Form->end() ?>
</div>
