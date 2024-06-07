
	
<?php require_once APP_ROOT . '/view/partials/header.php'?>
<title>TRAVEL:BLOG</title>
<style>
  *{
    padding: 0;
    margin: 0;
    box-sizing: border-box;
  }
 
  .table-container {
            overflow: auto;
        }
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  font-size: 20px !important;
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
}

tr:nth-child(even) {
  background-color: #dddddd;
}
</style>
</head>

	<body>
		 
		
<?php require_once APP_ROOT . '/view/partials/nav.php'?>



<!-- home section starts  -->

<section class="home" id="home">

    <div class="content">
        <h3>Welcome <?php echo htmlspecialchars(($currentUser->username)); ?></h3>
        <p>dicover new places with us, adventure awaits</p>
        <a href="#" class="btn">Lets take a look</a>
    </div>

    <div class="controls">
        <span class="vid-btn active" data-src="public/images/vid-1.mp4"></span>
        <span class="vid-btn" data-src="public/images/vid-2.mp4"></span>
        <span class="vid-btn" data-src="public/images/vid-3.mp4"></span>
        <span class="vid-btn" data-src="public/images/vid-4.mp4"></span>
        <span class="vid-btn" data-src="public/images/vid-5.mp4"></span>
    </div>

    <div class="video-container">
        <video src="public/images/vid-1.mp4" id="video-slider" loop autoplay muted></video>
    </div>

</section>

<!-- home section ends -->

<!-- book section starts  -->

<section class="book" id="book">

    <h1 class="heading">
        <span>b</span>
        <span>o</span>
        <span>o</span>
        <span>k</span>
        <span class="space"></span>
        <span>n</span>
        <span>o</span>
        <span>w</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="public/images/book-img.svg" alt="">
        </div>
        <?php if (isset($_GET['error'])): ?>
      <div class="text-center alert alert-<?=$_GET['type']?>" role="alert"><?=$_GET['error']?></div>
    <?php endif; ?>

        <form method="POST">
            <div class="inputBox">
                <h3>where to</h3>
                <input type="text" placeholder="place name" name="placeName">
            </div>
            <div class="inputBox">
                <h3>how many</h3>
                <input type="number" placeholder="number of guests" name="guestNumber">
            </div>
            <div class="inputBox">
                <h3>Phone Number</h3>
                <input type="tel" name="phoneNumber">
            </div>
            <div class="inputBox">
                <h3>Email Address</h3>
                <input type="email" name="emailAddress">
            </div>
            <div class="inputBox">
                <h3>arrivals</h3>
                <input type="date" name="arrival">
            </div>
            <div class="inputBox">
                <h3>leaving</h3>
                <input type="date" name="leaving">
            </div>
            <input type="hidden"name="create-package">

            <button type="submit" class="btn">Book Now</button>
        </form>

    </div>

</section>

<!-- book section ends -->

<!-- packages section starts  -->

<section class="packages" id="packages">

    <h1 class="heading">
        <span>p</span>
        <span>a</span>
        <span>c</span>
        <span>k</span>
        <span>a</span>
        <span>g</span>
        <span>e</span>
        <span>s</span>
    </h1>
    
    <div class="table-container">
    <table>
      <tr>
        <th>Serial Number</th>
        <th>Booked Number</th>
        <th>Where to</th>
        <th>Total Guests</th>
        <th>Phone Number</th>
        <th>Email Address</th>
        <th>Arrival</th>
        <th>Departure Date</th>
      </tr>
      <?php if (!empty($packages)): ?>
          <?php foreach ($packages as $index => $package): ?>
              <tr>
                  <td><?= $index + 1 ?></td>
                  <td><?= htmlspecialchars($package->booked_number) ?></td>
                  <td><?= htmlspecialchars($package->place_name) ?></td>
                  <td><?= htmlspecialchars($package->guest_number) ?></td>
                  <td><?= htmlspecialchars($package->phone_Number) ?></td>
                  <td><?= htmlspecialchars($package->email_Address) ?></td>
                  <td><?= htmlspecialchars($package->arrival) ?></td>
                  <td><?= htmlspecialchars($package->leaving) ?></td>
              </tr>
          <?php endforeach; ?>
      <?php else: ?>
          <tr>
              <td colspan="8">No packages found.</td>
          </tr>
      <?php endif; ?>
    </table>
</div>

</section>

<!-- packages section ends -->




<!-- contact section starts  -->

<section class="contact" id="contact">
    
    <h1 class="heading">
        <span>c</span>
        <span>o</span>
        <span>n</span>
        <span>t</span>
        <span>a</span>
        <span>c</span>
        <span>t</span>
    </h1>

    <div class="row">

        <div class="image">
            <img src="public/images/contact-img.svg" alt="">
        </div>

        <form action="">
            <div class="inputBox">
                <input type="text" placeholder="name">
                <input type="email" placeholder="email">
            </div>
            <div class="inputBox">
                <input type="number" placeholder="number">
                <input type="text" placeholder="subject">
            </div>
            <textarea placeholder="message" name="" id="" cols="30" rows="10"></textarea>
            <input type="submit" class="btn" value="send message">
        </form>

    </div>
    
</section>

<!-- contact section ends -->

<!-- brand section  -->
<section class="brand-container">

    <div class="swiper-container brand-slider">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="public/images/1.jpg" alt=""></div>
            <div class="swiper-slide"><img src="public/images/2.jpg" alt=""></div>
            <div class="swiper-slide"><img src="public/images/3.jpg" alt=""></div>
            <div class="swiper-slide"><img src="public/images/4.jpg" alt=""></div>
            <div class="swiper-slide"><img src="public/images/5.jpg" alt=""></div>
            <div class="swiper-slide"><img src="public/images/6.jpg" alt=""></div>
        </div>
    </div>

</section>

		
		
		<?php require_once APP_ROOT . '/view/partials/footer.php'?>