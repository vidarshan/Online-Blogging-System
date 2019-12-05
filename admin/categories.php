<?php include "includes/header.php"; ?>
    <div id="wrapper">

    <?php include "includes/navigation.php"; ?>




        <div id="page-wrapper">

            <div class="container-fluid">

                <!-- Page Heading -->
                <div class="row">
                    <div class="col-lg-12">
                        <h1 class="page-header">
                            Welcome to admin
                            <small>Author name</small>
                        </h1>


                        <div class="col-xs-6">
                        <form action="">
                            <div class="form-group">
                            <label for="">Category name : </label>
                            <input class="form-control" type="text" name="cat_title">
                            </div>
                            <div class="form-group">
                            <input class="btn btn-warning" type="submit" name="submit" value="Add Category">
                            </div>
                        </form>
                        </div>

                        <div class="col-xs-6">
                            <table class="table table-bordered table-hover">
                                <thead>
                                    <tr>
                                        <th>ID</th>
                                        <th>Category Title</th>
                                    </tr>
                                    <tbody>
                                        <tr>
                                            <td>Baseball Category</td>
                                            <td>BasketBall Category</td>
                                        </tr>
                                    </tbody>
                                </thead>
                            </table>
                        </div>


                    </div>
                </div>
                <!-- /.row -->

            </div>
            <!-- /.container-fluid -->

        </div>
        <!-- /#page-wrapper -->




        <?php include "includes/footer.php"; ?>