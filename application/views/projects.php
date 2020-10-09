<main class="mx-auto">
    <div class="container-lg bg-white px-md-5 pt-2 pt-md-4 main-content pb-5">
        <div class="col-12 col-md-10 offset-md-1 pb-4">

            <h2 class="text-center mb-3 mb-lg-4 mt-2 text-muted">· Projects and awards ·</h2>

            <ul>
                <?php
                foreach($projects as $project){
                    print('<li class="my-3 text-justify">');
                    print('<span class="font-weight-bold">'.$project['date'].'</span>. ');
                    print($project['text']);
                    print('</li>');
                }
                ?>
            </ul>
        </div>
    </div>
</main>