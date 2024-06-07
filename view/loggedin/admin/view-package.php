<?php require_once APP_ROOT . '/view/partials/admin-header.php'?>
<link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body>
<?php require_once APP_ROOT . '/view/partials/admin_sidebar.php'?>

<div class="container">
<?php if (isset($_GET['error'])): ?>
        <div class="text-center alert alert-<?=$_GET['type']?>" role="alert"><?=$_GET['error']?></div>
      <?php endif; ?>
          <div>
            <table class="table table-striped">
                <thead>
                    <tr>
                    <th scope="col">id</th>
                    <th scope="col">Booked Number</th>
                    <th scope="col">Where to</th>
                    <th scope="col">Total Guests</th>
                    <th scope="col">Phone</th>
                    <th scope="col">Email</th>
                    <th scope="col" >Arrival</th>
                    <th scope="col" >Departure</th>

                    </tr>
                </thead>
                <?php $q = 1; ?>
<tbody class="post-body bg-white ">
    <?php foreach ($packages as $cargo=> $package): ?>
        <tr data-id="<?=$package->id?>" class="bg-white">
            <th scope="row" ><?= $cargo +1 ?></th>
            <td class="text-uppercase"><?=$package->booked_number?></td>
            <td class="text-capitalize"><?=$package->place_name?></td>
            <td class="text-capitalize"><?=$package->guest_number?></td>
            <td class=""><?=$package->phone_Number?></td>
            <td class="text-capitalize"><?=$package->email_Address?></td>
            <td class="text-capitalize"><?=$package->arrival?></td>
            <td class="text-capitalize"><?=$package->leaving?></td>
     
           

    <!-- Update your "EDIT" links with data attributes -->





<td class="text-center">
    <button type="button" class="btn btn-sm btn-rounded btn-pill text-uppercase ml-4 text-white bg-danger text-white" title="Delete" onclick="return confirmDelete(<?= $package->id ?>, 'view-package')">
        Delete
    </button>
</td>





        </tr>
       
    <?php endforeach;?>
</tbody>

            </table>
          </div>
        </div>


 





    <?php require_once APP_ROOT . '/view/partials/admin-footer.php'?>

    