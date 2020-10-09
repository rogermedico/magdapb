<main class="mx-auto">
    <div class="container-lg bg-white px-md-5 pt-2 pt-md-4 main-content pb-5">
        <div class="col-12 col-md-10 offset-md-1 pb-4">

            <h2 class="text-center mb-3 mb-lg-4 mt-2 text-muted">· Publications ·</h2>

            <?php

            $yearBefore = null;

            foreach($publications as $publication){
                $yearNow = DateTime::createFromFormat("Y-m-d", $publication['date'])->format('Y');
                if($yearBefore != $yearNow){
                    $yearBefore = $yearNow;
                    print('<p class="publication-year text-muted mt-2"><time datetime="'.$yearNow.'">'.$yearNow.'</time></p>');
                }
                print('<div class="my-4">');
                //$date = DateTime::createFromFormat("Y-m-d", $publication['date'])->format('d/m/Y');
                print('<h3 class="publication-title mb-3">'.$publication['title'].'<br>
                <small class="text-muted">'.$publication['authors'].'</small></h3>');

                if($publication['abstract'] != null){
                    print('<p class="publication-abstract mb-2 text-justify">'.$publication['abstract'].'</p>');
                }
                print('<p class="publication-journal m-0">'.$publication['journal'].'</p>');
                print('<p clasS="publication-doi m-0">DOI: <a href="https://doi.org/'.$publication['doi'].'">'.$publication['doi'].'</a></p>');
                if($publication['pmid'] != null){
                    print('<p class="publication-pmid m-0">PMID: <a href="https://www.ncbi.nlm.nih.gov/pubmed/'.$publication['pmid'].'">'.$publication['pmid'].'</a></p>');
                }
                if($publication['issn'] != null){
                    print('<p class="publication-issn m-0"><span class="font-italic">Part of</span> ISSN: <a href="https://portal.issn.org/resource/ISSN/'.$publication['issn'].'">'.$publication['issn'].'</a></p>');
                }
                print('</div>');

            }
            ?>

        </div>
    </div>
</main>