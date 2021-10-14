<jsp:include page="UHeader.jsp"/>

 <!-- Hero Area End-->
        <!--================login_part Area =================-->
        <section class="login_part section_padding " style="margin-top: -200px">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_text text-center">
                            <div class="login_part_text_iner">
                                <h2>Already have an account?</h2>
                                <p>There are advances being made in science and technology
                                    everyday, and a good example of this is the</p>
                                <a href="Login.jsp" class="btn_3">Sign in Now</a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-6">
                        <div class="login_part_form">
                            <div class="login_part_form_iner">
                                <h3>Welcome! <br>
                                    let's set up your account</h3>
                                <form class="row contact_form" action="registeraccount" method="post" novalidate="novalidate">
                                	<div class="col-md-12 form-group p_star">
                                        <input type="text" class="form-control" id="name" name="fname" value=""
                                            placeholder="Fullname">
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <input type="text" class="form-control" id="name" name="username" value=""
                                            placeholder="Username">
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <input type="text" class="form-control" id="name" name="email" value=""
                                            placeholder="Email-id">
                                    </div>
                                    <div class="col-md-12 form-group p_star">
                                        <input type="text" class="form-control" id="name" name="mobno" value=""
                                            placeholder="mobile number">
                                    </div>
                                    
                                    <div class="col-md-12 form-group p_star">
                                        <input type="password" class="form-control" id="password" name="password" value=""
                                            placeholder="Password">
                                    </div>
                                    <div class="col-md-12 form-group">
                                        <div class="creat_account d-flex align-items-center">
                                            <input type="checkbox" id="f-option" name="selector">
                                            <label for="f-option">Remember me</label>
                                        </div>
                                        <button type="submit" value="submit" class="btn_3">
                                            register
                                        </button>
                                        <a class="lost_pass" href="#">forget password?</a>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!--================login_part end =================-->

<jsp:include page="UFooter.jsp"/>