<jsp:include page="header.jsp"></jsp:include>
<link href="${pageContext.request.contextPath}/resources/static/css/bootstrap-select.min.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/static/css/courseStyle.css" rel="stylesheet" type="text/css">
<link href="${pageContext.request.contextPath}/resources/static/plugins/bootstrap-datepicker/dist/css/bootstrap-datepicker.min.css" rel="stylesheet">
<style>
#couGeneration option:first-child {
    display: none;
}
</style>
    <div class="content-page" ng-app="courseApp" ng-controller="courseCtr">
        <div class="content">
            <div class="container">
                <!-- ========== start body content ========== -->

                <!-- Page-Title -->
                <div class="row">
                    <div class="col-md-12">
                        <h4 class="page-title">COURSES</h4>
                        <ol class="breadcrumb">
                            <li><a href="#">Study Management</a></li>
                            <li class="active">Course</li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <div class="col-md-12">
                        <div class="card-box">
                        
                        <ul class="pagination pagination-split" id="listGenerations">
							<li class="disabled">
								<a href="#"><i class="fa fa-angle-left"></i></a>
							</li>
							<li ng-repeat="gen in generations | orderBy:'GENID'">
								<a href="#">{{$index+1}}</a>
							</li>
							<li>
								<a href="#"><i class="fa fa-angle-right"></i></a>
							</li>
						</ul><hr>
                            <div class="row" id="result">
                                <!--basic-->
                                <div class="col-sm-3 col-md-3 spacecourse" style="background-color: rgba(11, 178, 83, 0.83);
                                    box-shadow:2px 2px 6px rgba(35, 35, 40, 0.83)">
                                    <h3 style="color: rgba(210, 255, 214, 0.83)"><b style="color: #ffffff">BASIC</b></h3>
                                    <p style="color: white;"><i>Added: 12/05/2013</i></p>
                                    <div>
                                        <button type="button" class="btn-white col-md-6">
                                            <span class="ion ion-eye-disabled"></span>Disable
                                        </button>
                                         <button type="button" class="btn-white col-md-6">
                                            <span class="fa  fa-pencil"></span>Edit
                                        </button>
                                    </div>
                                </div>

                                <!--advanced-->
                                <div class="col-sm-3 col-md-3 spacecourse" style="background-color: rgba(240, 81, 81, 0.83);
                                    box-shadow:2px 2px 6px rgba(35, 35, 40, 0.83)">
                                    <h3 style="color: rgba(210, 255, 214, 0.83)"><b style="color: #ffffff">ADVANCED</b></h3>
                                    <p style="color: white;"><i>Added: 12/05/2013</i></p>
                                    <div>
                                        <button type="button" class="btn-white col-md-6">
                                            <span class="ion ion-eye-disabled"></span>Disable
                                        </button>
                                         <button type="button" class="btn-white col-md-6">
                                            <span class="fa  fa-pencil"></span>Edit
                                        </button>
                                    </div>
                                </div>

                            </div>
                            <div class="col-lg-offset-11">
                            	<button value="plus" class="btn btn-primary waves-effect waves-light" ng-click="showAddCourseForm()" type="button" id="btnShowAddCourseView"><i id="plusicon" class="glyphicon glyphicon-plus-sign"></i></button>
                       		 </div>
                        </div>
                    </div>
                </div>
                <!-- ========== end body content ========== -->
                <div class="row" id="addCourse-layout" style="display: none">
                    <div class="col-md-12">
                        <div class="card-box">
                            <h4 class="m-t-0 header-title"><b>add new course</b></h4>
                            <p class="text-muted font-13 m-b-30">
                                Please fill all information to the control form.
                            </p>

                            <form action="#" data-parsley-validate novalidate name="frmAddCourse">
                            <div class="row">

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="couName">Generation <span style="color: red">*</span></label>
                                        <select class="form-control" id="couGeneration" name="couGeneration" ng-model="genToInsert">
                                        	<option ng-repeat="gen in generations | orderBy:'-GENID'" value="{{gen.GENID}}">{{gen.GENNAME}}</option>
                                        </select>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="couName">NAME <span style="color: red">*</span></label>
                                        <input type="text" ng-model="modCouName" name="modCouName" required placeholder="Course Name" id="couName" class="form-control" >
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="couDate">Start Date <span style="color: red">*</span></label>
                                         <div class="input-group">
										<input type="text" ng-model="modCouStartDate" class="form-control" placeholder="year-month-day" id="modCouStartDate" required name="modCouStartDate">
											<span class="input-group-addon bg-danger b-0 text-white"><i class="icon-calender"></i></span>
										</div>
                                    </div>
                                </div>
                                
                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="couDate">End Date <span style="color: red">*</span></label>
                                        <div class="input-group">
										<input type="text" ng-model="modCouEndDate" class="form-control" placeholder="year-month-day" id="modCouEndDate" required name="modCouEndDate">
											<span class="input-group-addon bg-success b-0 text-white"><i class="icon-calender"></i></span>
										</div>
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group">
                                        <label for="couColor">Color <span style="color: red">*</span></label>
                                        <input type="color" ng-model="modCouColor" name="modCouColor" required class="form-control" id="couColor">
                                    </div>
                                </div>

                                <div class="col-md-2">
                                    <div class="form-group text-center m-b-0">
                                        <label>Click here to Add</label>
                                        <button id="saveCourse" ng-click="addCourse()" class="btn btn-primary col-md-12 waves-effect waves-light" type="button"
                                        ng-disabled="frmAddCourse.couGeneration.$invalid || frmAddCourse.modCouName.$invalid || frmAddCourse.modCouStartDate.$invalid || frmAddCourse.modCouEndDate.$invalid || frmAddCourse.modCouColor.$invalid">Save</button>
                                    </div>
                                </div>
                                
							</div>
                          </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="${pageContext.request.contextPath}/resources/static/js/bootstrap-select.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/courseAngular.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/js/courseJquery.js"></script>
<script src="${pageContext.request.contextPath}/resources/static/plugins/bootstrap-datepicker/dist/js/bootstrap-datepicker.min.js"></script>
<jsp:include page="footer.jsp"></jsp:include>