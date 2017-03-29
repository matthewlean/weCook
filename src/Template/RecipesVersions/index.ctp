<?php
/**
  * @var \App\View\AppView $this
  */
?>
<nav class="large-3 medium-4 columns" id="actions-sidebar">
    <ul class="side-nav">
        <li class="heading"><?= __('Actions') ?></li>
        <li><?= $this->Html->link(__('New Recipes Version'), ['action' => 'add']) ?></li>
        <li><?= $this->Html->link(__('List Recipes'), ['controller' => 'Recipes', 'action' => 'index']) ?></li>
        <li><?= $this->Html->link(__('New Recipe'), ['controller' => 'Recipes', 'action' => 'add']) ?></li>
    </ul>
</nav>
<div class="recipesVersions index large-9 medium-8 columns content">
    <h3><?= __('Recipes Versions') ?></h3>
    <table cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th scope="col"><?= $this->Paginator->sort('id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('recipe_id') ?></th>
                <th scope="col"><?= $this->Paginator->sort('version_id') ?></th>
                <th scope="col" class="actions"><?= __('Actions') ?></th>
            </tr>
        </thead>
        <tbody>
            <?php foreach ($recipesVersions as $recipesVersion): ?>
            <tr>
                <td><?= $this->Number->format($recipesVersion->id) ?></td>
                <td><?= $recipesVersion->has('recipe') ? $this->Html->link($recipesVersion->recipe->name, ['controller' => 'Recipes', 'action' => 'view', $recipesVersion->recipe->id]) : '' ?></td>
                <td><?= $this->Number->format($recipesVersion->version_id) ?></td>
                <td class="actions">
                    <?= $this->Html->link(__('View'), ['action' => 'view', $recipesVersion->id]) ?>
                    <?= $this->Html->link(__('Edit'), ['action' => 'edit', $recipesVersion->id]) ?>
                    <?= $this->Form->postLink(__('Delete'), ['action' => 'delete', $recipesVersion->id], ['confirm' => __('Are you sure you want to delete # {0}?', $recipesVersion->id)]) ?>
                </td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
    <div class="paginator">
        <ul class="pagination">
            <?= $this->Paginator->first('<< ' . __('first')) ?>
            <?= $this->Paginator->prev('< ' . __('previous')) ?>
            <?= $this->Paginator->numbers() ?>
            <?= $this->Paginator->next(__('next') . ' >') ?>
            <?= $this->Paginator->last(__('last') . ' >>') ?>
        </ul>
        <p><?= $this->Paginator->counter(['format' => __('Page {{page}} of {{pages}}, showing {{current}} record(s) out of {{count}} total')]) ?></p>
    </div>
</div>
