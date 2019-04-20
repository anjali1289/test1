<%@page import="com.baga.dao.MasterSkillDao"%>
<%@page import="com.baga.entity.MasterSkills"%>
<%@page import="java.util.ArrayList"%>
<%@include file="include/header.jsp"%>
<%@include file="include/sidebar.jsp"%>
<!-- <div class="navbar-default sidebar" role="navigation">
                <div class="sidebar-nav navbar-collapse">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                <button class="btn btn-default" type="button">
                                    <i class="fa fa-search"></i>
                                </button>
                            </span>
                            </div>
                            /input-group
                        </li>
                        <li>
                            <a href="index.jsp"><i class="fa fa-dashboard fa-fw"></i> HOME</a>
                        </li>
                       
                        <li>
                            <a href="#"><i class="fa fa-edit fa-fw"></i> Registration</a>
                             <ul class="nav nav-second-level">
                             <li>
                                    <a href="register.jsp">Provider Register</a>
                                </li>
                                <li>
                                    <a href="register.jsp">Seeker Register </a>
                                </li>
                             
                             </ul>
                             
                             
                        </li>
                        
                        <li>
                            <a href="#"><i class="fa fa-table fa-fw"></i> Information Tables</a>
                            <ul class="nav nav-second-level">
                            <li>
                                    <a href="providertable.jsp">Provider Information</a>
                                </li>
                                <li>
                                    <a href="tables.jsp">Seeker Information </a>
                                </li>
                                </ul>
                        </li>
 
                        <li>
                            <a href="#"><i class="fa fa-files-o fa-fw"></i> Sample Pages<span class="fa arrow"></span></a>
                            <ul class="nav nav-second-level">
                                <li>
                                    <a href="blank.html">Blank Page</a>
                                </li>
                                <li>
                                    <a href="login.html">Login Page</a>
                                </li>
                            </ul>
                            /.nav-second-level
                        </li>
                    </ul>
                </div>
                /.sidebar-collapse
            </div>
            /.navbar-static-side
        </nav> -->


<div id="page-wrapper">
	<div class="row">
		<div class="col-lg-5">
			<h1 class="page-header">Forms</h1>
		</div>
		<!-- /.col-lg-12 -->
	</div>
	<!-- /.row -->
	<div class="row">
		<div class="col-lg-5">
			<div class="panel panel-default">
				<div class="panel-heading">Basic Form Elements</div>
				<div class="panel-body">
					<div class="row">
						<div class="col-lg-5">
							
								<form action="SubmitFormServlet">
								<form role="form">
									<div class="form-group">
										<label>Enter Your Name</label> <input name="name"
											class="form-control">

										<div class="form-group">

											<label>Gender</label> <label class="radio-inline"> <input
												type="radio" name="optionsRadiosInline"
												id="optionsRadiosInline1" value="male" checked>1
											</label> <label class="radio-inline"> <input type="radio"
												name="optionsRadiosInline" id="optionsRadiosInline2"
												value="female">2
											</label> <label class="radio-inline"> <input type="radio"
												name="optionsRadiosInline" id="optionsRadiosInline3"
												value="other">3
											</label>

										</div>
									
									<div class="form-group">
										<label>Enter Your DOB</label> <input name="dob"
											class="form-control">

									</div>
									<div class="form-group">
										<label>Enter Your Contact Number</label> <input name="contact"
											class="form-control"> <label>Enter your Email</label>

										<input name="email" type="email" class="form-control"
											id="email">
									</div>
									<div class="form-group">
										<lable> Enter You Experience</lable>
										<input name="experience" class="form-control">
										</div>	


								
									<div class="form-group">
										<label> Your Location</label> <input name="location"
											class="form-control">

									</div>
									<div class="form-group">
										<label>Enter Your Address</label> <input name="Address"
											class="form-control">

									</div>

						<%-- 			
						<%
						MasterSkillDao d = new MasterSkillDao();
						ArrayList<MasterSkills> s =d.findAll();
							request.setAttribute("s",s);
								
						%>
						<%
							ArrayList<MasterSkills> al =(ArrayList<MasterSkills>)request.getAttribute("s");%>
						
						
				<div class="form-group">
							<label> Multiple Selects Skill</label>  
							<select name="skill" multiple class="form-control">
								
								<%
									for (MasterSkills a : al) {
								%>
								<option value= <%a.getMskill_id();%> ><%=a.getSkillname()%></option>
								<% }%>
									
								
							</select>
							
						</div>
						</div> --%>
						
						<div>
						<div class="form-group">
										<label>Enter UserName</label> <input name="username"
											type="email" placeholder = "username" class="form-control" id="email"> <label>Enter
											Password</label> <input name="password" type="password"
											class="form-control" id="email">
									</div>
						
						<button type="submit" class="btn btn-default">Submit
							Button</button>
						<button type="reset" class="btn btn-default">Reset Button</button>
					</div>

					</form>
				</div>

				</form>
			</div>
			<!-- /.col-lg-6 (nested) -->
		</div>
		<!-- /.row (nested) -->
	</div>
	<!-- /.panel-body -->
</div>
<!-- /.panel -->
</div>
<!-- /.col-lg-12 -->
</div>
<!-- /.row -->
</div>
<!-- /#page-wrapper -->


