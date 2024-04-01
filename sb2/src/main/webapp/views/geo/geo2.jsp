<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2024-03-27
  Time: 오전 9:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<style>
    #geo2 #map{
        width: 600px;
        height: 400px;
        border: solid 1px gray;
        margin: 10px;
    }
</style>

<script>
    let geo2 = {
        map: null,
        // initialize
        init: function () {
            this.mapdisplay();
            $('#btn_s').click(() =>{
                this.go(37.5447611, 127.0564625)
            });
            $('#btn_b').click(() =>{
                this.go(35.2100142, 129.0688702)
            });
            $('#btn_j').click(() =>{
                this.go(33.2979361, 126.5534925)
            });
        },
        // map 객체 생성
        mapdisplay: function () {
            var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                mapOption = {
                    center: new kakao.maps.LatLng(37.5447611, 127.0564625), // 지도의 중심좌표
                    level: 8 // 지도의 확대 레벨
                };
            this.map = new kakao.maps.Map(mapContainer, mapOption);
            var market_position = new kakao.maps.LatLng(37.5447611,127.0564625);

            var marker = new kakao.maps.Marker({
                position: market_position
            });
            marker.setMap(this.map);
        },
        // 이동
        go: function (lat, lng) {
            var moveLatLon = new kakao.maps.LatLng(lat, lng);
            this.map.panTo(moveLatLon);
        },
        // 이동한 지역의 데이터 호출
        // loc(s, b, j)
        getgeodata: function (loc) {},
        display: function (datas){}
    };
    $(function() {
        geo2.init();
    });
</script>

<div class="container" id="geo2">
    <h2>Geo2 Center Page</h2>
    <button id="btn_s" type="button" class="btn btn-primary">Seoul</button>
    <button id="btn_b" type="button" class="btn btn-warning">Busan</button>
    <button id="btn_j" type="button" class="btn btn-danger">Jeju</button>
    <div id="map"></div>
</div>