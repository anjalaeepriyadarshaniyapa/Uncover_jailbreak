<html>

<head>
  <title>Silze & Checkra</title>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <style>
  .container1 {
    background-color: #FFFFFF;
    height: 90%;
  }

  .container {
    background-color: #FFFFFF;
    padding: 20px;
  }

  .lbl_title {
    font-size: 125%;
    color: #fff;
    padding: 10px;
  }

  .subBtn {
    position: relative;
    top: 22px;
    width: 80%;
    height: 5%;
    border-radius: 15px;
    border: none;
    color: #FFFAFA;
    background-color: #191970;
  }

  #iphone {
    width: 90%;
    height: 9%;
    padding: 10px;
  }

  #version {
    width: 90%;
    height: 9%;
    padding: 10px;
  }

  #os {
    width: 90%;
    height: 9%;

  }



  @media screen and (min-width: 350px) {
    .change {
      padding-top: 25px;
    }

  }

  @media screen and (min-width: 600px) {
    .change {
      padding-top: 0px;
    }
  }
  </style>
</head>

<body style="background-color:#F4F4F4; position:relative; top:5%">

  <div class="container1">



    <div class="title">
      <h2 style="text-align: center; color:Teal;"> Uncover Jailbreak</h2>
        <!-- <h2 style="text-align: Center;color:Teal;"> Jailbreak</h2> -->
    </div>

    <div class="container" style="border-radius: 5px;">
      <div class="fr" style="padding: 42px;">
        <form   action="#"  method="POST" >
          <div class="row">
            <div class="iphn">
              <div class="col-md-3">
                <lable  name="device" class="lbl_title">i phone</lable>
                <center> <select  id="sel-device" required class="form-control">
                     <option value="iphone select">Select iphone</option>
               
                  </select></center>
              </div>


            </div>

            <div class="version change">
              <div class="col-md-3">
                <lable name="model" class="lbl_title">Model</lable>
                <center> <select  id="sel-models" required class="form-control">
                     <option value="iphone version">Select Model</option>
               
                  </select></center>
              </div>
            </div>

            <div class="os change">
              <div class="col-md-3">
                <lable  class="lbl_title">version</lable>
                <center> <select name="os" id="sel-version"  class="form-control" onchange="getComboA(this)">
                     <option value="iphone select">Select Version</option>
               
                  </select></center>
              </div>
            </div>

            <div class="bt change">
              <div class="col-md-3">
                <center>
                  <div class="btn1" style="margin-bottom: 16px;">
                      <!-- <Button id="btn-jailbreak" type="submit" class="subBtn">Check for Jailbreak</Button>
                       -->
                    <input type="button" id="btn_sample" class="subBtn" value="Check for Jailbreak">
                    <input id="btn-jailbreak" type="submit" class="subBtn" value="Check for Jailbreak"  style="display:none;">
                  
                  </div>
                  </div>
                </center>
              </div>
            </div>

           

          </div>
        </form>
        <div class="row justify-content-center">
          <div class="col-6" id="div-result">

          </div>
        </div>
      </div>
    </div>



  </div>




</body>
<script src="https://code.jquery.com/jquery-3.6.0.slim.js"
  integrity="sha256-HwWONEZrpuoh951cQD1ov2HUK5zA5DwJ1DNUXaM6FsY=" crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<!-- <script>
function validateForm() {
  console.log("Hi")
  var x = document.forms["script"][ "device"] ["version"] ["model"].value;
  if (x == "" || x == null) {
    alert("Name must be filled out");
    return false;
  }
}
</script> -->
<script>

function getComboA(){
    document.getElementById("btn_sample").style.display = "none";
    document.getElementById("btn-jailbreak").style.display = "block";
}


    $(document).ready(function() {
    
      //get all devices
      $.ajax({
        method: "POST",
        url: "load_devices.php",
        dataType: "JSON",
        success: function(result) {
          //console.log(result);
          $("#sel-device").empty();
            $("#sel-device").append(`<option value="iphone select">Select Device</option>`);
          result.map(data => {
          
            $("#sel-device").append(`
              <option value="${data.devi_id}">${data.device}</option>
            `);
          })
        }
      })
      //get all devices end
    
      //get models for selected device
      $("#sel-device").change(function() {

        let device_id = $(this).val();

        $.ajax({
          method: "POST",
          url: "load_models.php",
          data: {
            device_id: device_id
          },
          dataType: "JSON",
          success: function(result) {
            $("#sel-models").empty();
            $("#sel-models").append(`<option value="iphone select">Select Model</option>`);
            result.map(data => {
              $("#sel-models").append(`
                <option value="${data.m_id}">${data.model_name}</option>
              `);
            })
          }
        })
      })
      //get models for selected device end
    
      //get version for selected model
      $("#sel-models").change(function() {
        let id = $(this).val();
        $.ajax({
          method: "POST",
          url: "load_versions.php",
          data: {
            model_id: id
          },
          dataType: "JSON",
          success: function(result) {
            $("#sel-version").empty();
            $("#sel-version").append(`<option value="iphone select">Select Version</option>`);
            result.map(data => {
              $("#sel-version").append(`
                <option value="${data.id}">${data.versions_number}</option>
              `);
            })
          }
        })
      })
      //get version for selected model end
    
      //jail break tools
      $("#btn-jailbreak").click(function(e) {
        e.preventDefault();
        let version_no = $("#sel-version").val();
        let model_no = $("#sel-models").val();
        if (version_no != null) {
          //console.log(version_no);
          $.ajax({
            method: "POST",
            url: "tool.php",
            data: {
              version_no: version_no,
              model_no:model_no
            },
            dataType: "JSON",
            success: function(result) {
              if (result.message == 0) {
                //console.log("empty");
                $("#div-result").html(`
                  <div class="bg-light p-3" style="border-radius:10px;">
                    <div class="row"md-3>
                      <div class="col-12 mt-3 text-center">
                        <img style="width:100px;" src="images/img-error.png"/>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 text-center">
                        <h3>Your Device is Not compatible to run Uncover check alternative solution</h3>
                      </div>
                    </div>
                    <div class="row" style="margin-bottom: 14px;">
                      <div class="col-12 text-center">
                        <span style="font-size:18px; color:purple">Try Tweak App Stores</span>
                      </div>
                    </div>
                    <div class="row">
                      <div class="col-12 text-center"> 
                      <a href="https://silzee.com/tweaked-apps/" class="w3-button w3-teal">Tweak App Store -  Alternative solution</a>    
                    </div>
                    </div>
                  </div>
                `);
              } else {
                //console.log(result[0].image);
                $("#div-result").empty();
                result.map(item => {
                  $("#div-result").append(`
                    <div class="bg-light p-3 mt-1" style="border-radius:10px;">
                      <div class="row">
                        <div class="col-12 text-center">
                          <img style="width:100px; border-radius: 8px;" src="images/${item.image}"/>
                          <span style="font-size:20px;color:DodgerBlue; width:100%;display:block;">${item.tool_name}</span>
                          
                          </div>
                      </div>
                      <div class="row" style="margin-bottom: 15px;">
                        <div class="col-12 text-center">
                          <h4 style="color:MediumSeaGreen;" > Good news-Unc0ver Supports your Device and iOS/iPadOS</h4>
                        </div>
                      </div>
                      <div class="row" style="margin-bottom: 15px;">
                        <div class="col-12 text-center">
                          <a class="btn btn-primary" href="https://silzee.com/unc0ver/">Download</a>
                        </div>
                      </div>
                    </div>
                  `);
                });
    
              }
            }
          })
        }
    
      })
      //jail break end
    })
    </script>



</html>