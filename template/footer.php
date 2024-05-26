      	<hr>
<div>
      	<footer>
        	<div>
            <form>
                <input type="button" value="Sing out" onclick="logoutfn()" class="btn btn-danger">
            
          
        	
           <div class="text-muted pull-right">
               
                <input type="button" value="Admin login" onclick="adminfn()" class="btn btn-primary">
                </div>
              </form>
 
        	</div>
      	</footer>
    </div>
<script>
function logoutfn()
    {
        location.assign("logout.php");
    }
function adminfn()
    {
        location.assign("admin.php");
    }
</script>

 
    <script type="text/javascript" src="./bootstrap/js/jquery-2.1.4.min.js"></script>
    <script type="text/javascript" src="./bootstrap/js/bootstrap.min.js"></script>
  </body>
</html>