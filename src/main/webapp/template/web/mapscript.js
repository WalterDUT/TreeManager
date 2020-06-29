var map;
var list = getAttribute("model".listResult);
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
    {
      position: { lat: 16.047079, lng: 108.20623 },
      map: map,
      nameTree: "marker1",
      heightTree: "2",
      specieTree: "mlem",
      ageTree: "56",
    },
    {
      position: { lat: 16.547079, lng: 108.20623 },
      map: map,
      nameTree: "marker2",
      heightTree: "4",
      specieTree: "ml12em",
      ageTree: "56",
    },
    {
      position: { lat: 16.047079, lng: 108.70623 },
      map: map,
      nameTree: "marker3",
      heightTree: "6",
      specieTree: "mdlem",
      ageTree: "567",
    },
  ];

  //Loop through markers
  for (var i = 0; i < markers.length; i++) {
    // Add marker
    //placeMarker(markers[i]);
	 placeMarker(list[i]);
  }
  //new Marker
  function placeMarker(props) {
    var _marker = new google.maps.Marker({
      position: props.position,
      map: props.map,
    });
    if(props.nameTree){
      // Set icon image
      _marker.nameTree = props.nameTree;
    }
    if(props.heightTree){
      // Set icon image
      _marker.heightTree = props.heightTree;
    }
    if(props.specieTree){
      // Set icon image
      _marker.specieTree = props.specieTree;
    }
    if(props.nameTree){
      // Set icon image
      _marker.ageTree = props.ageTree;
    }

    _marker.setMap(map);
    if (document.getElementById("addBtn").className == "btn btn-danger") {
      infoMarker(_marker);
    }
    _marker.addListener("click", function (e) {
      console.log(_marker.nameTree);
      console.log(_marker.heightTree);
      console.log(_marker.specieTree);
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
      $("#specieTree").val(_marker.specieTree);
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
        $("#specieTree").keyup(function () {
          markers[i].specieTree = document.getElementById("specieTree").value;
        });
        $("#ageTree").keyup(function () {
          markers[i].ageTree = document.getElementById("ageTree").value;
        });
        break;
      }
    }
  }
} //ENdMap

