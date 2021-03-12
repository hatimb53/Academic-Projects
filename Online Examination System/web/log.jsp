<%-- 
    Document   : log.jsp
    Created on : Mar 29, 2016, 10:00:55 PM
    Author     : sanjay jain
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <form action="/accounts/register/" method="post" role="form" class="form-horizontal">
    <input type='hidden' name='csrfmiddlewaretoken' value='brGfMU16YyyG2QEcpLqhb3Zh8AvkYkJt' />
    <div class="form-group required"><label class="col-md-2 control-label">Username</label><div class="col-md-4"><input class="form-control" id="id_username" maxlength="30" name="username" placeholder="Username" required="required" title="" type="text" /></div></div>
    <div class="form-group required"><label class="col-md-2 control-label">E-mail</label><div class="col-md-4"><input class="form-control" id="id_email" name="email" placeholder="E-mail" required="required" title="" type="email" /></div></div>
    <div class="form-group required"><label class="col-md-2 control-label">Password</label><div class="col-md-4"><input class="form-control" id="id_password1" name="password1" placeholder="Password" required="required" title="" type="password" /></div></div>
    <div class="form-group required"><label class="col-md-2 control-label">Password (again)</label><div class="col-md-4"><input class="form-control" id="id_password2" name="password2" placeholder="Password (again)" required="required" title="" type="password" /></div></div>
    <div class="form-group required"><label class="col-md-2 control-label">first name</label><div class="col-md-4"><input class="form-control" id="id_first_name" maxlength="30" name="first_name" placeholder="first name" required="required" title="" type="text" /></div></div>
    <div class="form-group required"><label class="col-md-2 control-label">last name</label><div class="col-md-4"><input class="form-control" id="id_last_name" maxlength="30" name="last_name" placeholder="last name" required="required" title="" type="text" /></div></div>
    <div class="form-group required"><label class="col-md-2 control-label">&#160;</label><div class="col-md-4"><div class="checkbox"><label><input class="" id="id_tos" name="tos" required="required" type="checkbox" /> I have read and agree to the Terms of Service</label></div></div></div>
    
    <div class="form-group">
        <div class="col-sm-offset-2 col-sm-10">
           <button type="submit" class="btn btn-primary">
              <span class="glyphicon glyphicon-star"></span> Sign Me Up!
           </button>
        </div>
    </div>
</form>


    </body>
</html>
