<script type="text/javascript">
    <?php
    include('javascript/email-fade.js');
    ?>
</script>
<section>
    <form action="../../../back-end/signup/personal/signup-script-personal.inc.php" method="POST">
        <h1 class="title">Personal Account Sign Up</h1>
        <input type="text" class="input-half" id="firstname" name="firstname" placeholder="Firstname">
        <input type="text" class="input-half" id="lastname" name="lastname" placeholder="Lastname"> <br>
        <select name="gender" class="drop-down-gender">
            <option value="Gender">Gender</option>
            <option value="Male">Male</option>
            <option value="Female">Female</option>
            <option value="Other">Other</option>
        </select> <br>
        <!--    For loop to generate HTML for the days    -->
        <select name="day" class="drop-down-day">
            <option value="Day">Day</option>
            <?php
            for ($x = 1; $x <= 31; $x++) {
                echo "<option value="."\"$x\"".">".$x."</option>";
            }
            ?>
        </select>
        <select name="month" class="drop-down-month">
            <option value="Month">Month</option>
            <option value="1">January</option>
            <option value="2">February</option>
            <option value="3">March</option>
            <option value="4">April</option>
            <option value="5">May</option>
            <option value="6">June</option>
            <option value="7">July</option>
            <option value="8">August</option>
            <option value="9">September</option>
            <option value="10">October</option>
            <option value="11">November</option>
            <option value="12">December</option>
        </select>
        <!--    For loop to generate HTML for the years    -->
        <select name="year" class="drop-down-year">
            <option value="Year">Year</option>
            <?php
            for ($x = 2018; $x >= 1900; --$x) {
                echo "<option value="."\"$x\"".">".$x."</option>";
            }
            ?>
        </select> <br>
<!--        <input type="text" class="input" name="email" placeholder="Email Address" onclick="runemailconfirm2()"> -->
<!--        <div id="form-email-wrapper">-->
<!---->
<!--        </div>-->
        <input type="text" class="input" name="username" placeholder="Username"> <br>
        <input type="text" class="input" name="email" placeholder="Email Address"> <br>
        <input type="text" class="input" name="email2" placeholder="Confirm your email address"> <br>
        <input type="password" class="input" name="password" placeholder="Password"> <br>
        <input type="password" class="input" name="password2" placeholder="Confirm your password">
        <p class="password-notice-title">A Strong Password <strong>should -</strong></p>
        <ul class="password-notice">
            <li>Be at least 8 characters in length</li>
            <li>Contain both upper and lowercase alphabetic characters (e.g. A-Z, a-z)</li>
            <li>Have at least one numerical character (e.g. 0-9)</li>
            <li>Have at least one special character (e.g. ~!@#$%^&*()_-+=)</li>
        </ul>
        <p class="password-notice-title">A Stron
            g Password <strong>should not -</strong></p>
        <ul class="password-notice">
            <li>Spell a word or series of words that can be found in a standard dictionary</li>
            <li>Spell a word with a number added to the beginning and the end</li>
            <li>Be based on any personal information such as user id, family name, pet, birthday, etc.</li>
        </ul>
        <input type="submit" name="submit" class="submit-btn" value="Sign Up">
    </form>
</section>