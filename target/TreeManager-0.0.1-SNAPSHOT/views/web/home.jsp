<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html>
<html lang="en">

<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<title>Map</title>

</head>

<body>
	<div id="myModal" class="modal fade" role="dialog">
		<div class="modal-dialog">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">
						&times;</button>
					<h4 class="modal-title">Điền thông tin cây</h4>
				</div>
				<div class="modal-body">
					<form>
						<div class="form-group">
							<label for="Latitude">Latitude:</label> <input disabled
								type="text" class="form-control" id="Latitude" />
						</div>
						<div class="form-group">
							<label for="Longitude">Longitude:</label> <input disabled
								type="text" class="form-control" id="Longitude" />
						</div>
						<div class="form-group">
							<label for="nameTree">Tên cây:</label> <input type="text"
								class="form-control" placeholder="Nhập tên cây" id="nameTree" />
						</div>
						<div class="form-group">
							<label for="height">Chiều cao:</label> <input type="text"
								class="form-control" placeholder="Nhập Chiều cao" id="height" />
						</div>
						<div class="form-group">
							<label for="familia">Giống cây:</label> <input type="text"
								class="form-control" placeholder="Nhập Giống cây" id="familia" />
						</div>
						<div class="form-group">
							<label for="ageTree">Tuổi cây:</label> <input type="text"
								class="form-control" placeholder="Nhập Tuổi cây" id="ageTree" />
						</div>
						<button type="submit" action="<c:url value = '/api-tree'/>"
							method="post" class="btn btn-success">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
	<div class="fixed">
		<button type="button" class="btn btn-success" id="addBtn">
			<i class="fa fa-plus"></i>
		</button>
	</div>

	<!--Map-->
	<div id="map"></div>

	<script>
    var map;
    
    //Map
    function initMap() {
      var myLatlng = new google.maps.LatLng(16.047079, 108.20623);
      map = new google.maps.Map(document.getElementById("map"), {
        center: myLatlng,
        zoom: 12,
      });
      //Adding marker Button
      var addingListener;
      var count = 0;
      $("#addBtn").click(function () {
        if (document.getElementById("addBtn").className == "btn btn-success") {
          map.setOptions({ draggableCursor: "crosshair" });
          addingListener = map.addListener("click", function (e) {
            if (count == 0) {
            markers.push(placeMarker({ position: e.latLng, map: map }));
            updateMarkerInfo(e);
            count++;
            } else {
              alert(
                "Chỉ tạo được 1 marker 1 lần, bấm Submit marker vừa tạo để tạo marker khác"
              );
            }
          });
          document.getElementById("addBtn").className = "btn btn-danger";
        } else {
          map.setOptions({ draggableCursor: "" });
          google.maps.event.removeListener(addingListener);
          document.getElementById("addBtn").className = "btn btn-success";
        }
      });

      // Markers Init
      var markers = [
    	  <c:forEach var="item" items="${model.listResult}">
			{
				position: { lat: ${item.latitude}, lng: ${item.longitude} };
		          map: map,
		          nameTree: "${item.familia}",
		          heightTree: "${item.height}",
		          familia: "${item.typeTree}",
		          ageTree: "${item.ageTree}",
			},
  		</c:forEach>
      ];

      //Loop through markers
      for (var i = 0; i < markers.length; i++) {
        // Add marker
        placeMarker(markers[i]);

      }
      //new Marker
      function placeMarker(props) {
        var _marker = new google.maps.Marker({
          position: props.position,
          map: props.map,
        });
        
        if(props.nameTree){
          _marker.nameTree = props.nameTree;
        }
        if(props.heightTree){
          _marker.heightTree = props.heightTree;
        }
        if(props.familia){
          _marker.familia = props.familia;
        }
        if(props.nameTree){
          _marker.ageTree = props.ageTree;
        }
        if (!props.icon && document.getElementById("addBtn").className == "btn btn-danger") {
            // Set icon image
            _marker.setIcon('<c:url value='/template/img/tree-icon-add.png' />') ;
        }
        else if (!props.icon) {
            // Set icon image
            _marker.setIcon('<c:url value='/template/img/tree-icon.png' />') ;
        }

        _marker.setMap(map);
        if (document.getElementById("addBtn").className == "btn btn-danger") {
          infoMarker(_marker);
        }
        _marker.addListener("click", function (e) {
          console.log(_marker.nameTree);
          console.log(_marker.heightTree);
          console.log(_marker.familia);
          console.log(_marker.ageTree);
          infoMarker(_marker);
          markers.forEach(element => {
            console.log(element);
          });
        });
        function infoMarker(_marker) {
          $("#myModal").modal();
          $("#Latitude").val(_marker.position.lat().toString());
          $("#Longitude").val(_marker.position.lng().toString());
          $("#nameTree").val(_marker.nameTree);
          $("#height").val(_marker.heightTree);
          $("#familia").val(_marker.familia);
          $("#ageTree").val(_marker.ageTree);
        }
        return _marker;
      }

      function updateMarkerInfo(e) {
        for (var i = 0; i < markers.length; i++) {
          // Add marker
          if (markers[i].position == e.latLng) {
            console.log("Bằng nhau nè");
            $("#nameTree").keyup(function () {
              markers[i].nameTree = document.getElementById("nameTree").value;
            });
            $("#height").keyup(function () {
              markers[i].heightTree = document.getElementById("height").value;
            });
            $("#familia").keyup(function () {
              markers[i].familia = document.getElementById("familia").value;
            });
            $("#ageTree").keyup(function () {
              markers[i].ageTree = document.getElementById("ageTree").value;
            });
            break;
          }
        }
      }
    } //EndMap

	</script>
	<script
		src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCB2GCaVRZE7pXySJWFdDkudO607EL38WU&callback=initMap"
		async defer>
	</script>
</body>

</html>

