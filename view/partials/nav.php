<header>

    <div id="menu-bar" class="fas fa-bars"></div>

    <a href="#" class="logo"><span>T</span>ravel</a>

    <nav class="navbar">
        <a href="#home">home</a>
        <?php if ($loggedin): ?>
            <a href="#packages">packages</a>
            <a href="#contact">contact</a>
        <?php else: ?>
            <a href="#book">book</a>
            <a href="#packages">packages</a>
            <a href="#services">services</a>
            <a href="#gallery">gallery</a>
            <a href="#review">review</a>
            <a href="#contact">contact</a>
        <?php endif; ?>
    </nav>

    <div class="icons">
        <?php if ($loggedin): ?>
        <a href="logout">
  <i class="fas fa-user" id="login-btn"></i>
</a>
    
        <?php else: ?>
            <a href="auth-register">
                <i class="fas fa-user" id="login-btn"></i>
            </a>
        <?php endif; ?>
    </div>

    <form action="" class="search-bar-container">
        <input type="search" id="search-bar" placeholder="search here...">
        <label for="search-bar" class="fas fa-search"></label>
    </form>

</header>


<!-- header section ends -->

<!-- login form container  -->

<div class="login-form-container">

  

</div>
