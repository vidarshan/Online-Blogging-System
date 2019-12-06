<?php include "includes/admin_header.php"; ?>


    <div id="wrapper">

        <!-- Navigation -->
        <?php include "includes/admin_navigation.php"; ?>

        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                    <h1 class="page-header">
                            Welcome to admin page
                            <small>Author</small>
                        </h1>


                        <?php
                        
                        //***important *****//


                            if(isset($_GET['source'])){

                                $source = $_GET['source'];


                            }else{
                               $source = '';
                            }

                            switch($source){

                                case '34';
                                echo "NICE 34";
                                break;

                                case '100';
                                echo "NICE 100";
                                break;

                                case '200';
                                echo "NICE 200";
                                break;

                                default:
                                include "includes/view_all_posts.php";
                                break;
                            }
                            
                        ?>


                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->
<?php include "includes/admin_footer.php"; ?>