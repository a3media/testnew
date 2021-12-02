<div id="menu" class="full_menu d-none d-lg-flex">
    <div class="container">
        <nav>
                {$_modx->runSnippet('pdoMenu@PropertySet', [
                'parents' => 0,
                'level'=> 2,
                'firstClass' => 'first',
                'lastClass' => '0',
                'levelClass' => 'level',
            ])}
        </nav>
    </div>
</div>
