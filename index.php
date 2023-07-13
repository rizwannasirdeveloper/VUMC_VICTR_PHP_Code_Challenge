<?php require 'libs/fetch_github.php'; ?>

<?php include 'inc/header.php'; ?>

    <!-- MAIN HEADING -->
    <section class="vumc-heading">
        <div class="container">
            <h1>VUMC VICTR PHP Code Challenge</h1>
            <form action="" method="post">
                <input type="submit" name="refresh" class="refresh_btn" value="Refresh">
            </form>
            <!-- <a href="#">Refresh</a> -->
        </div>
    </section>
    <!-- MAIN END -->
    <!-- VUMC SEC START -->
    <section class="vumc-table-heading">
    <div class="container-fluid">
            <div class="vumc-table-outer">
                <div class="serial-hd font-size">Serial No.</div>
                <div class="name-hd font-size">Name</div>
                <div class="no-stars-hd font-size">No. Of Stars</div>
                <div class="repo-link-hd font-size">Repo Link</div>
            </div>
    </div>
    </section>
    <!-- VUMC SEC END -->

    <section class="vumc-table-data">
        <div class="container-fluid">
            <?php
                require_once 'config/db.php';
                $query = "SELECT * FROM `repos` WHERE `refresh_date` IN ( SELECT MAX(`refresh_date`) FROM `repos` )";
                $res = mysqli_query($db, $query);
                $i = 1;
                foreach ($res as $row):
            ?>
            <!-- ROW 1 -->
            <div class="vumc-data-outer">
                <div class="serial-box font-size">
                    <p><?php echo $i; ?></p>
                </div>
                <div class="name-box font-size">
                    <!-- MODEL START -->
                    <!-- Button trigger modal -->
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal<?php echo $row['ID']; ?>">
                            <?php echo $row['name']; ?>
                        </button>
                        
                        <!-- Modal -->
                        <div class="modal fade" id="exampleModal<?php echo $row['ID']; ?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
                            <div class="modal-dialog">
                            <div class="modal-content">
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"><img src="assets/images/cross.png" alt=""></button>
                                <?php
                                    require_once 'config/db.php';
                                    $query = "SELECT * FROM `repos` WHERE `ID` = '{$row['ID']}'";
                                    $res = mysqli_query($db, $query);
                                    $data = mysqli_fetch_array($res);
                                ?>
                                <div class="modal-body">
                                    <div class="modal-outer">
                                        <div class="modal-left-side">
                                            <div class="modal-name-outerwrap">
                                                <div class="modal-name">
                                                    <h6>Name</h6>
                                                    <p><?php echo $data['name'] ?></p>
                                                </div>
                                                <div class="modal-star">
                                                    <p><?php echo number_format($data['total_stars']) ?></p>
                                                    <img src="assets/images/yellow-star.png" alt="">
                                                    <img src="assets/images/yellow-star.png" alt="">
                                                    <img src="assets/images/yellow-star.png" alt="">
                                                    <img src="assets/images/yellow-star.png" alt="">
                                                    <img src="assets/images/gray-star.png" alt="">
                                                </div>
                                            </div>
                                            <div class="modal-name">
                                                <h6>Description</h6>
                                                <p><?php echo !empty(stripslashes($data['description']))?stripslashes($data['description']):'No description found.' ?></p>
                                            </div>
                                        </div>
                                        <div class="modal-right-side">
                                            <div class="modal-date">
                                                <h6>Created Date</h6>
                                                <p><?php echo date('d-M-Y', strtotime($data['created_date'])); ?></p>
                                            </div>
                                            <div class="modal-date">
                                                <h6>Last Push Date</h6>
                                                <p><?php echo date('d-M-Y', strtotime($data['last_push_date'])); ?></p>
                                            </div>
                                            <div class="modal-date">
                                                <h6>Repository ID</h6>
                                                <p><?php echo $data['repo_id'] ?></p>
                                            </div>
                                            <div class="modal-btn">
                                                <a href="<?php echo $data['url'] ?>" target="_blank">Link <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-send" viewBox="0 0 16 16">
                                                    <path d="M15.854.146a.5.5 0 0 1 .11.54l-5.819 14.547a.75.75 0 0 1-1.329.124l-3.178-4.995L.643 7.184a.75.75 0 0 1 .124-1.33L15.314.037a.5.5 0 0 1 .54.11ZM6.636 10.07l2.761 4.338L14.13 2.576 6.636 10.07Zm6.787-8.201L1.591 6.602l4.339 2.76 7.494-7.493Z"/>
                                                </svg></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <?php ?>
                            </div>
                            </div>
                        </div>
                    <!-- MODEL END -->
                </div>
                <div class="no-stars-box font-size">
                    <p><?php echo number_format($row['total_stars']); ?></p>
                </div>
                <div class="repo-link-box font-size">
                    <a href="<?php echo $row['url']; ?>" target="_blank"><img src="assets/images/repo-arrow.png " alt=""></a>
                </div>
            </div>
            
            <?php $i++; ?>
            <?php endforeach; ?>
        </div>
    </section>

    
<?php include 'inc/footer.php'; ?>