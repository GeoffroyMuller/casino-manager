GDPC                                                                             '   H   res://.import/New Piskel(1).png-b80e18f175c6f78fc26182da611f6ed2.stex   �R            �� 4y���}fj��H   res://.import/New Piskel(2).png-40403c66c9d5d8756c6220104c468aa9.stex   PV            +���m2��^�p��D   res://.import/New Piskel.png-01781bae457e8438690baaa62bd2fd91.stex  Z            �,�G��l8&�ݾ�i<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex�^      �      �p��<f��r�g��.�   res://Scene/Accueil.tscnp      �      B���xT� ��d,^`   res://Scene/Empty.tscn  `      �      ��3�Ҭ6�� 8���    res://Scene/Machine_sous.tscn   0      �      ㎀َ�����g�A+   res://Scene/Main.tscn   0      �      ��C�����F7��;~F�$   res://Scene/Script/Accueil.gd.remap �n      /       a�᳛�!�<�<ߠL:    res://Scene/Script/Accueil.gdc  �      �      ���9�3 �RO�/��$   res://Scene/Script/Camera2D.gd.remap�n      0       i�:J�H�����248    res://Scene/Script/Camera2D.gdc p      z      ���	8QN+�ۅa�$   res://Scene/Script/Empty.gd.remap    o      -       /IC����bm��V��   res://Scene/Script/Empty.gdc�"      ]      �ͳS`}{T�I8B�(   res://Scene/Script/Grid_casino.gd.remap 0o      3       sƅ+��~t����䭌�$   res://Scene/Script/Grid_casino.gdc  P$      g      "W�3�ܽ5P�)>i���(   res://Scene/Script/RoomsMenu.gd.remap   po      1       ����}O�! �� 0�    res://Scene/Script/RoomsMenu.gdc�5      �      j�w���۝u�_�3��$   res://Scene/Script/allRoom.gd.remap �o      /       ��^���o�>v.��G    res://Scene/Script/allRoom.gdc  �:      �       H�TMFV_��|{GA�L�(   res://Scene/Script/cameraDown.gd.remap  �o      2       ���������Ǡ��$   res://Scene/Script/cameraDown.gdc   @;      7      �h'�F[6	�/u�\��$   res://Scene/Script/cameraUp.gd.remap p      0       ��V�A)8��@�a����    res://Scene/Script/cameraUp.gdc �<      Y      ��ͣ���-��Ў��(   res://Scene/Script/lostClick.gd.remap   Pp      1       ��Q&X�lD�P��%    res://Scene/Script/lostClick.gdc�=      �      ΢H����}z�אr�(   res://Scene/Script/machine_sous.gd.remap�p      4       ?�ܛ����*\�B�*��$   res://Scene/Script/machine_sous.gdc �?      �      3�Pn��Ll�#�rϢ3@,   res://Scene/Script/room_interface.gd.remap  �p      6       SE��+����7��s4�(   res://Scene/Script/room_interface.gdc   `A      �      �o���������_    res://Scene/room_interface.tscn  H            ��MS.E��aqWYM   res://Scene/room_menu.tscn  0J      L      ���{:�`�HV1]$(   res://Sprite/New Piskel(1).png.import   �S      �      �q�ڛ�������(   res://Sprite/New Piskel(2).png.import   `W      �      �~��EC��tvL� {�6$   res://Sprite/New Piskel.png.import  0[      �      sS���Λ�up�H�T   res://default_env.tres  �]      �       um�`�N��<*ỳ�8   res://icon.png  q      i      ����󈘥Ey��
�   res://icon.png.import    l      �      �����%��(#AB�   res://project.binary�~      Y       ���D������        [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scene/room_interface.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scene/Script/Accueil.gd" type="Script" id=2]
[ext_resource path="res://Sprite/New Piskel.png" type="Texture" id=3]

[node name="Accueil" instance=ExtResource( 1 )]
script = ExtResource( 2 )
rewardAtTime = 30

[node name="Sprite" type="Sprite" parent="." index="1"]
texture = ExtResource( 3 )

[node name="Timer" parent="." index="2"]
wait_time = 60.0
       [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scene/room_interface.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scene/Script/Empty.gd" type="Script" id=2]
[ext_resource path="res://Sprite/New Piskel(2).png" type="Texture" id=3]

[node name="Empty" instance=ExtResource( 1 )]
script = ExtResource( 2 )

[node name="Sprite" type="Sprite" parent="." index="1"]
modulate = Color( 1, 1, 1, 0.278431 )
texture = ExtResource( 3 )
               [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scene/room_interface.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scene/Script/machine_sous.gd" type="Script" id=2]
[ext_resource path="res://Sprite/New Piskel(1).png" type="Texture" id=3]

[node name="Machine_sous" instance=ExtResource( 1 )]
script = ExtResource( 2 )
rewardAtTime = 60

[node name="Sprite" type="Sprite" parent="." index="1"]
texture = ExtResource( 3 )

[node name="Timer" parent="." index="2"]
wait_time = 60.0
          [gd_scene load_steps=8 format=2]

[ext_resource path="res://Scene/Script/Grid_casino.gd" type="Script" id=1]
[ext_resource path="res://Scene/Script/lostClick.gd" type="Script" id=2]
[ext_resource path="res://Scene/Script/allRoom.gd" type="Script" id=3]
[ext_resource path="res://Scene/Script/Camera2D.gd" type="Script" id=4]
[ext_resource path="res://Scene/room_menu.tscn" type="PackedScene" id=5]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 1280.73, 922.542 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 536, 22 )

[node name="Grid_casino" type="Node2D"]
position = Vector2( 64, 32 )
script = ExtResource( 1 )

[node name="lostClick" type="Area2D" parent="."]
script = ExtResource( 2 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="lostClick"]
position = Vector2( 98.9079, 83.4535 )
shape = SubResource( 1 )

[node name="allRoom" type="Node2D" parent="."]
position = Vector2( -1.22775, 1.52588e-05 )
script = ExtResource( 3 )
__meta__ = {
"_edit_lock_": true
}

[node name="Camera2D" type="Camera2D" parent="allRoom"]
position = Vector2( 1.22775, -1.52588e-05 )
current = true
drag_margin_h_enabled = false
drag_margin_v_enabled = false
script = ExtResource( 4 )

[node name="cameraUp" type="Area2D" parent="allRoom/Camera2D"]
position = Vector2( 0, -300 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="allRoom/Camera2D/cameraUp"]
shape = SubResource( 2 )

[node name="TimerCameraUp" type="Timer" parent="allRoom/Camera2D/cameraUp"]
wait_time = 0.1

[node name="cameraDown" type="Area2D" parent="allRoom/Camera2D"]
position = Vector2( 0, 300 )

[node name="TimerCameraDown" type="Timer" parent="allRoom/Camera2D/cameraDown"]
wait_time = 0.1

[node name="CollisionShape2D" type="CollisionShape2D" parent="allRoom/Camera2D/cameraDown"]
shape = SubResource( 2 )

[node name="RoomsMenu" parent="allRoom/Camera2D" instance=ExtResource( 5 )]
visible = false
position = Vector2( -175, -100 )
z_index = 3
[connection signal="exit_all" from="lostClick" to="." method="_on_lostClick_exit_all"]
[connection signal="mouse_entered" from="allRoom/Camera2D/cameraUp" to="allRoom/Camera2D" method="_on_cameraUp_mouse_entered"]
[connection signal="mouse_exited" from="allRoom/Camera2D/cameraUp" to="allRoom/Camera2D" method="_on_cameraUp_mouse_exited"]
[connection signal="timeout" from="allRoom/Camera2D/cameraUp/TimerCameraUp" to="allRoom/Camera2D" method="_on_TimerCameraUp_timeout"]
[connection signal="mouse_entered" from="allRoom/Camera2D/cameraDown" to="allRoom/Camera2D" method="_on_cameraDown_mouse_entered"]
[connection signal="mouse_exited" from="allRoom/Camera2D/cameraDown" to="allRoom/Camera2D" method="_on_cameraDown_mouse_exited"]
[connection signal="timeout" from="allRoom/Camera2D/cameraDown/TimerCameraDown" to="allRoom/Camera2D" method="_on_TimerCameraDown_timeout"]
[connection signal="room_selected" from="allRoom/Camera2D/RoomsMenu" to="." method="onObjectSelected"]
            GDSC         
   2      �����϶�   �Ҷ�   �������������������¶���   ���������������Ķ���   �������ݶ���   ����������ڶ   ������Ŷ   $   res://Scene/Script/room_interface.gd                �         clicked       Click on Accueil                   	                                 	   (   
   3YY0PQV�  �  �  �  �  P�  R�  Q�  �  PQYY0�  PQV�  �  P�  RR�  Q�  �8  P�  R�  PQQ`GDSC         .   �      �����ׄ򶶶�   ��������������Ķ   ����������������Ķ��   �����϶�   �������������������������Ҷ�   �������ƶ���   ������������ƶ��   ����¶��   ������������������������¶��   �������ض���   ������������������������Ҷ��   ���ƶ���   ��������������������������¶    ���������������������������Ҷ���   ���������ض�   ��������������ض   ��������������������������Ҷ                       
                                                       	      
                            &      *      3      5      6      7      =      L      N      O      P      V      _      c      e      f      g      m       |   !   ~   "      #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   3YYYYY;�  V�  Y;�  V�  YYYY0�  PQV�  -YY0�  PQV�  �  �  �  W�  �  T�  PQ�  -YYY0�  PQV�  T�	  T�	  �  P�  R�  Q�  -YYY0�
  PQV�  W�  �  T�  PQ�  �  �  -YYY0�  PQV�  T�	  T�	  �  P�  R�  Q�  -YYY0�  PQV�  �  �  �  W�  �  T�  PQ�  -YYY0�  PQV�  �  �  W�  �  T�  PQ�  -Y`      GDSC            *      �����϶�   �Ҷ�   �������ݶ���   ����������ڶ   ������Ŷ   $   res://Scene/Script/room_interface.gd             clicked       Click on Empty                     	                                 	   '   
   (      3YY0PQV�  �  �  �  YY0�  PQV�  �  P�  RR�  Q�  �8  P�  R�  PQQYY`   GDSC   9      x   �     ���ӄ�   ��ڶ   ����������Ӷ   ����Ӷ��   ���Ҷ���   �������Ӷ���   ζ��   ϶��   �����϶�   ��������������������Ҷ��   ������۶   �����ׄ򶶶�   �������ض���   ������������������������Ŷ��   ������Ҷ   ������Ҷ   ����������¶   ������������������������Ŷ��   �����¶�   �������۶���   ���������Ӷ�   ��������������Ӷ   ������Ŷ   ��������������Ŷ   �����������۶���   ߶��   ܶ��   ��ܶ   ��������Ҷ��   ����������������Ŷ��   ���������������Ŷ���   ������¶   ����������������ö��   ���۶���   ��Ŷ   ��������ö��   ������Ӷ   ������Ŷ   ��������������Ҷ   �Ҷ�   ����������ض   ������������������������ض��   ���������������Ҷ���   ����������������Ҷ��   ���ض���   ���¶���   ����ڶ��   ���������������������ڶ�   �����¶�   ����¶��   ��������������������ض��   �����������ζ���   ���������������   ���۶���   �������Ŷ���   ����Ӷ��   ��������������������      res://Scene/Empty.tscn                   res://Scene/Accueil.tscn   �            @      �                     clicked       onObjectClicked       facture       onFactureReceived                                      .         cost =         gain =    '        ?                                                       (   	   1   
   :      I      K      L      Y      h      i      o      s      �      �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &     '     (     )   !  *   2  +   3  ,   9  -   B  .   K  /   V  0   _  1   b  2   i  3   s  4   t  5   z  6   �  7   �  8   �  9   �  :   �  ;   �  <   �  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H     I     J      K   !  L   *  M   5  N   @  O   M  P   N  Q   Z  R   m  S   t  T   u  U   ~  V   �  W   �  X   �  Y   �  Z   �  [   �  \   �  ]   �  ^   �  _   �  `   �  a   �  b   �  c   �  d   �  e   �  f   �  g   �  h   �  i   �  j   �  k     l     m   *  n   6  o   ?  p   O  q   c  r   m  s   }  t   �  u   �  v   �  w   �  x   3YY5;�  V�  ?PQYY;�  V�  �  YY5;�  V�  L�  L�  R�  R�  MR�  L�  R�  R�  MR�  L�  R�  R�  MR�  L�E  P�  QT�  PQR�  R�  MYMYY;�  V�  L�  R�  R�  MY;�  V�  L�  R�  R�  R�  MYY0�  PQV�  �	  PQ�  W�
  �  T�  �  P�  R�  Q�  -�  Y0�  P�  R�  QX�  V�  ;�  �  L�  ML�  M�  .�  YY0�  P�  R�  R�  QV�  &P�  �  QV�  ;�  �  P�  R�  Q�  &P�  �  QV�  �  T�  PQ�  ;�  �  T�  PQ�  �  L�  ML�  M�  �  �  T�  P�  R�  Q�  �  P�  Q�  �  P�  R�  Q�  (V�  L�  ML�  M�  �  Y0�  P�  R�  QV�  ;�  �  P�  R�  Q�  &P�  �  QV�  W�
  T�  P�  Q�  �  T�  �  P�  L�  MR�  L�  MQ�  Y0�	  PQV�  )�  �D  P�  QV�  )�  �D  P�	  QV�  &�  P�  R�  Q�  V�  �  P�  R�  R�  Q�  (V�  �  P�  R�  Q�  �  P�  P�  R�  QQ�  Y0�  PQV�  )�  �D  P�  QV�  )�  �D  P�	  QV�  �  P�  R�  Q�  Y0�  PQV�  )�  �D  P�  QV�  )�  �D  P�	  QV�  ;�  V�  �  P�  R�  Q�  &P�  �  QV�  �  T�  PQ�  �  P�  R�  R�  Q�  YY0�  P�  QV�  �  T�  P�
  RR�  Q�  �  T�  P�  RR�  QYY0�   P�!  R�"  QV�  W�
  �  �#  T�$  �  �  W�
  �  �#  T�  P�!  T�%  PQL�  MR�!  T�%  PQL�  MQYYY0�&  P�!  R�'  QV�  &W�
  �  �#  T�$  V�  W�
  �  �#  T�$  �  �  �8  P�!  T�%  PQR�  R�'  Q�  �  ;�(  �)  PQW�  T�  �  &P�'  �  W�
  �  �#  T�$  �  QV�  �   P�!  R�(  QYY0�*  P�!  R�"  QV�  &�!  �  V�  �  P�"  L�  MR�"  L�  MR�!  Q�  W�
  �  �#  T�$  �  YYY0�+  P�,  R�-  QV�  �8  P�  R�-  R�  R�,  Q�  ;�.  �,  �-  Y�  �  �  �.  �  &�  	�  V�  -YYY0�/  PQV�  &W�
  �  �#  T�$  V�  W�
  �  �#  T�$  �  �  -YY0�0  P�1  QV�  &P�1  4�2  QV�  &P�1  T�3  �4  QV�  &W�
  �  T�5  �  P�  R�  QV�  W�
  �  T�5  W�
  �  T�5  �  P�  R�  Q�  ;�6  �)  PQW�  T�  �  W�
  �  T�  �6  �  W�
  �  �#  T�7  �  P�  R�  Q�  W�
  �  �#  T�  W�
  �  �#  T�  �  �  &P�1  T�3  �8  QV�  &W�
  �  T�5  	�  P�  R�  QV�  W�
  �  T�5  W�
  �  T�5  �  P�  R�  Q�  W�
  �  T�  �  P�  R�  Q�  W�
  �  �#  T�7  �  P�  R�  Q�  W�
  �  �#  T�  W�
  �  �#  T�  �  �  `         GDSC         '   �      ���ӄ�   ������ڶ   ����������Ӷ   �����������Ŷ���   ��ڶ   ������������Ҷ��   ���۶���   ��Ŷ   ζ��   ϶��   �����϶�   ������Ŷ   ��������������¶   �����¶�   ��������������Ӷ   �������Ӷ���   ����������ڶ   ������������������������Ҷ��   ��������������������Ҷ��   ���������������Ҷ���   ������Ӷ   ����������������������Ҷ      res://Scene/Accueil.tscn      res://Scene/Machine_sous.tscn         res://Scene/Empty.tscn              room_selected                                         $      %      -      .   	   4   
   :      ;      A      C      D      M      S      Y      Z      a      j      s      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YY5;�  V�  ?PQY5;�  V�  ?P�  QY5;�  V�  ?P�  QYYB�  P�  R�  QYY;�  �  Y;�	  �  YY0�
  PQV�  -YY0�  P�  R�	  QV�  T�  �  �  T�	  �	  �  Y0�  P�  QV�  ;�  �  T�  PQ�  �  T�  P�  R�	  Q�  �  P�  R�  RL�  R�	  MQYY0�  PQV�  �  P�  QYY0�  PQV�  �  P�  QYYY0�  PQV�  T�  �  �  -YYY0�  PQV�  �  P�  Q�  -Y`         GDSC                   ���ӄ�   �����϶�                                                    	      
                           3YYYYYYY0�  PQV�  -YYYYY`    GDSC            %      ���ׄ�   ���������ض�   �����϶�   �������ׄ������������Ķ�   ����������ڶ   
   cameraDown                                                      	      
                                       3YYYYYB�  PQYY0�  PQV�  -YYYYYY0�  PQV�  �  PQ`         GDSC            *      ���ׄ�   �������ƶ���   �����϶�   �������ׄ������������Ķ�   ����������ڶ      cameraUp      mouse up                                                    	      
                                       $      3YYYYYB�  PQYY0�  PQV�  -YYYYYY0�  PQV�  �  PQ�  �8  P�  Q`       GDSC            9      ���ׄ�   �������ڶ���   �����϶�   �����������¶���   �������¶���   ����¶��   ��������ζ��   ��������������������ض��   �����������ζ���   �����������   ���������Ҷ�   ����������ڶ      exit_all                         	      
                     	      
   2      7      3YYB�  PQYYY0�  PQV�  -YY0�  P�  R�  R�  QV�  &P�  4�  �  T�  �	  �  T�
  PQQV�  �  PQY`    GDSC         
   2      �����϶�   �Ҷ�   �������������������¶���   ���������������Ķ���   �������ݶ���   ����������ڶ   ������Ŷ   $   res://Scene/Script/room_interface.gd         �     d         clicked       Click on Machine a sous                    	                                 	   (   
   3YY0PQV�  �  �  �  �  P�  R�  Q�  �  PQYY0�  PQV�  �  P�  RR�  Q�  �8  P�  R�  PQQ`        GDSC   %      5        ���ӄ�   �Ҷ�   ���¶���   ���ض���   ���������ζ�   ���������϶�   ���Ӷ���   ����ڶ��   �������ζ���   �����������Ӷ���   ������Ҷ   ���۶���   ������Ӷ   �����Ҷ�   ������Ŷ   ������Ŷ   ζ��   ϶��   �����������¶���   �������¶���   ����¶��   ��������ζ��   ��������������������ض��   �����������ζ���   �����������   ���������Ҷ�   �������ݶ���   ����������ڶ   ����������������¶��   ����Ķ��   ����¶��   ���������������Ķ���   ��������Ӷ��   �������������������¶���   ����䶶�   ����䶶�   ������������ڶ��                         clicked       Click on room interface       facture                                      !      )      0   	   7   
   >      F      G      O      W      X      `      c      d      l      s      t      }      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .     /     0   	  1   
  2     3     4     5   3YY;�  V�  Y;�  V�  �  Y;�  V�  �  Y;�  V�  Y;�  V�  Y;�  V�  �  Y;�  V�  Y;�  V�  �  Y8;�	  V�  �  YYB�
  P�  R�  QYB�  P�  R�  QYY0�  PQX�  V�  .�  YY0�  PQX�  V�  .L�  R�  M�  Y0�  P�  R�  QV�  �  �  �  �  �  �  Y0�  P�  R�  R�  QV�  &�  4�  �  T�  �  �  T�  PQV�  T�  PQYYY0�  PQV�  �  P�  RR�  Q�  �8  P�  R�  PQQYY0�  PQV�  �  P�  R�  R�  Q�  W�  T�  PQ�  Y0�  PQV�  &P�	  �  QV�  W�  T�   �	  �  W�  T�  PQ�  Y0�!  P�"  R�#  QV�  �  �"  �  �  �#  YY0�$  PQV�  &�  
�  V�  �  �  �  `             [gd_scene load_steps=3 format=2]

[ext_resource path="res://Scene/Script/room_interface.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 64.0393, 31.5334 )

[node name="room_interface" type="Area2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="Timer" type="Timer" parent="."]
[connection signal="timeout" from="Timer" to="." method="_on_Timer_timeout"]
              [gd_scene load_steps=4 format=2]

[ext_resource path="res://Scene/Script/RoomsMenu.gd" type="Script" id=1]
[ext_resource path="res://Sprite/New Piskel.png" type="Texture" id=2]
[ext_resource path="res://Sprite/New Piskel(1).png" type="Texture" id=3]

[node name="RoomsMenu" type="Node2D"]
script = ExtResource( 1 )

[node name="Panel" type="Panel" parent="."]
margin_right = 40.0
margin_bottom = 40.0

[node name="ItemList" type="ItemList" parent="Panel"]
margin_right = 355.0
margin_bottom = 201.0
max_columns = 4

[node name="AccueilButton" type="TextureButton" parent="Panel/ItemList"]
margin_left = 19.7835
margin_top = 33.7448
margin_right = 147.783
margin_bottom = 97.7448
rect_min_size = Vector2( 64, 32 )
rect_scale = Vector2( 0.5, 0.5 )
texture_normal = ExtResource( 2 )

[node name="MASButton" type="TextureButton" parent="Panel/ItemList"]
margin_left = 19.6397
margin_top = 90.7076
margin_right = 147.64
margin_bottom = 154.708
rect_scale = Vector2( 0.5, 0.5 )
texture_normal = ExtResource( 3 )

[node name="Label" type="Label" parent="Panel/ItemList"]
margin_left = 103.875
margin_top = 43.4031
margin_right = 143.875
margin_bottom = 57.4031
text = "Accueil"

[node name="Label2" type="Label" parent="Panel/ItemList"]
margin_left = 89.2445
margin_top = 101.436
margin_right = 188.244
margin_bottom = 115.436
text = "Machine à sous"

[node name="exit" type="Button" parent="Panel/ItemList"]
margin_left = 325.0
margin_top = 4.0
margin_right = 348.0
margin_bottom = 24.0
text = "X"

[node name="destroyRoom" type="TextureButton" parent="Panel/ItemList"]
margin_left = 32.108
margin_top = 153.729
margin_right = 160.108
margin_bottom = 217.729
rect_scale = Vector2( 0.3, 0.3 )
texture_normal = ExtResource( 2 )

[connection signal="pressed" from="Panel/ItemList/AccueilButton" to="." method="_on_AccueilButton_pressed"]
[connection signal="pressed" from="Panel/ItemList/MASButton" to="." method="_on_MASButton_pressed"]
[connection signal="pressed" from="Panel/ItemList/exit" to="." method="_on_exit_pressed"]
[connection signal="pressed" from="Panel/ItemList/destroyRoom" to="." method="_on_destroyRoom_pressed"]
    GDST�   @           �   PNG �PNG

   IHDR   �   @   ��   �IDATx���1�  ��1K8�:AG=:�^�#��[�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8�]����    IEND�B`�              [remap]

importer="texture"
type="StreamTexture"
path="res://.import/New Piskel(1).png-b80e18f175c6f78fc26182da611f6ed2.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/New Piskel(1).png"
dest_files=[ "res://.import/New Piskel(1).png-b80e18f175c6f78fc26182da611f6ed2.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�   @           �   PNG �PNG

   IHDR   �   @   ��   �IDATx���1  �0���+M�螙��:��� q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g��� �E�;    IEND�B`�[remap]

importer="texture"
type="StreamTexture"
path="res://.import/New Piskel(2).png-40403c66c9d5d8756c6220104c468aa9.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/New Piskel(2).png"
dest_files=[ "res://.import/New Piskel(2).png-40403c66c9d5d8756c6220104c468aa9.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              GDST�   @           �   PNG �PNG

   IHDR   �   @   ��   �IDATx���A  �@4ҿ�F���]�=6��w��~��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q�3@��g�8� � q���+��    IEND�B`�               [remap]

importer="texture"
type="StreamTexture"
path="res://.import/New Piskel.png-01781bae457e8438690baaa62bd2fd91.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://Sprite/New Piskel.png"
dest_files=[ "res://.import/New Piskel.png-01781bae457e8438690baaa62bd2fd91.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
       [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           |  PNG �PNG

   IHDR   @   @   �iq�  ?IDATx��{pTU�����;�N7	�����%"fyN�8��r\]fEgةf���X�g��F�Y@Wp\]|,�D@��	$$���	��I�n���ҝt����JW�s��}�=���|�D(���W@T0^����f��	��q!��!i��7�C���V�P4}! ���t�ŀx��dB.��x^��x�ɏN��贚�E�2�Z�R�EP(�6�<0dYF���}^Ѡ�,	�3=�_<��(P&�
tF3j�Q���Q�B�7�3�D�@�G�U��ĠU=� �M2!*��[�ACT(�&�@0hUO�u��U�O�J��^FT(Qit �V!>%���9 J���jv	�R�@&��g���t�5S��A��R��OO^vz�u�L�2�����lM��>tH
�R6��������dk��=b�K�љ�]�י�F*W�볃�\m=�13� �Є,�ˏy��Ic��&G��k�t�M��/Q]�أ]Q^6o��r�h����Lʳpw���,�,���)��O{�:א=]� :LF�[�*���'/���^�d�Pqw�>>��k��G�g���No���\��r����/���q�̾��	�G��O���t%L�:`Ƶww�+���}��ݾ ۿ��SeŔ����  �b⾻ǰ��<n_�G��/��8�Σ�l]z/3��g����sB��tm�tjvw�:��5���l~�O���v��]ǚ��֩=�H	u���54�:�{"������}k����d���^��`�6�ev�#Q$�ήǞ��[�Ặ�e�e��Hqo{�59i˲����O+��e������4�u�r��z�q~8c
 �G���7vr��tZ5�X�7����_qQc�[����uR��?/���+d��x�>r2����P6����`�k��,7�8�ɿ��O<Ė��}AM�E%�;�SI�BF���}��@P�yK�@��_:����R{��C_���9������
M��~����i����������s���������6�,�c�������q�����`����9���W�pXW]���:�n�aұt~9�[���~e�;��f���G���v0ԣ� ݈���y�,��:j%gox�T
�����kְ�����%<��A`���Jk?���� gm���x�*o4����o��.�����逊i�L����>���-���c�����5L����i�}�����4����usB������67��}����Z�ȶ�)+����)+H#ۢ�RK�AW�xww%��5�lfC�A���bP�lf��5����>���`0ċ/oA-�,�]ĝ�$�峋P2/���`���;����[Y��.&�Y�QlM���ƌb+��,�s�[��S ��}<;���]�:��y��1>'�AMm����7q���RY%9)���ȡI�]>�_l�C����-z�� ;>�-g�dt5іT�Aͺy�2w9���d�T��J�}u�}���X�Ks���<@��t��ebL������w�aw�N����c����F���3
�2먭�e���PQ�s�`��m<1u8�3�#����XMڈe�3�yb�p�m��܇+��x�%O?CmM-Yf��(�K�h�بU1%?I�X�r��� ��n^y�U�����1�玒�6..e��RJrRz�Oc������ʫ��]9���ZV�\�$IL�OŨ��{��M�p�L56��Wy��J�R{���FDA@
��^�y�������l6���{�=��ή�V�hM�V���JK��:��\�+��@�l/���ʧ����pQ��������׷Q^^�(�T������|.���9�?I�M���>���5�f欙X�VƎ-f͚ո���9����=�m���Y���c��Z�̚5��k~���gHHR�Ls/l9²���+ ����:��杧��"9�@��ad�ŝ��ѽ�Y���]O�W_�`Ֆ#Դ8�z��5-N^�r�Z����h���ʆY���=�`�M���Ty�l���.	�/z��fH���������֗�H�9�f������G� ̛<��q��|�]>ں}�N�3�;i�r"�(2RtY���4X���F�
�����8 �[�\锰�b`�0s�:���v���2�f��k�Zp��Ω&G���=��6em.mN�o.u�fԐc��i����C���u=~{�����a^�UH������¡,�t(jy�Q�ɋ����5�Gaw��/�Kv?�|K��(��SF�h�����V��xȩ2St쯹���{6b�M/�t��@0�{�Ԫ�"�v7�Q�A�(�ľR�<	�w�H1D�|8�]�]�Ո%����jҢ꯸hs�"~꯸P�B�� �%I}}��+f�����O�cg�3rd���P�������qIڻ]�h�c9��xh )z5��� �ƾ"1:3���j���'1;��#U�失g���0I}�u3.)@�Q�A�ĠQ`I�`�(1h��t*�:�>'��&v��!I?�/.)@�S�%q�\���l�TWq�������լ�G�5zy6w��[��5�r���L`�^���/x}�>��t4���cݦ�(�H�g��C�EA�g�)�Hfݦ��5�;q-���?ư�4�����K����XQ*�av�F��������񵏷�;>��l�\F��Þs�c�hL�5�G�c�������=q�P����E �.���'��8Us�{Ǎ���#������q�HDA`b��%����F�hog���|�������]K�n��UJ�}������Dk��g��8q���&G����A�RP�e�$'�i��I3j�w8������?�G�&<	&䪬R��lb1�J����B$�9�꤮�ES���[�������8�]��I�B!
�T
L:5�����d���K30"-	�(��D5�v��#U�����jԔ�QR�GIaó�I3�nJVk���&'��q����ux��AP<�"�Q�����H�`Jң�jP(D��]�����`0��+�p�inm�r�)��,^�_�rI�,��H>?M-44���x���"� �H�T��zIty����^B�.��%9?E����П�($@H!�D��#m�e���vB(��t �2.��8!���s2Tʡ �N;>w'����dq�"�2����O�9$�P	<(��z�Ff�<�z�N��/yD�t�/?�B.��A��>��i%�ǋ"�p n� ���]~!�W�J���a�q!n��V X*�c �TJT*%�6�<d[�    IEND�B`�        [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
[remap]

path="res://Scene/Script/Accueil.gdc"
 [remap]

path="res://Scene/Script/Camera2D.gdc"
[remap]

path="res://Scene/Script/Empty.gdc"
   [remap]

path="res://Scene/Script/Grid_casino.gdc"
             [remap]

path="res://Scene/Script/RoomsMenu.gdc"
               [remap]

path="res://Scene/Script/allRoom.gdc"
 [remap]

path="res://Scene/Script/cameraDown.gdc"
              [remap]

path="res://Scene/Script/cameraUp.gdc"
[remap]

path="res://Scene/Script/lostClick.gdc"
               [remap]

path="res://Scene/Script/machine_sous.gdc"
            [remap]

path="res://Scene/Script/room_interface.gdc"
          �PNG

   IHDR   @   @   �iq�  0IDATx��}pTU����L����W�$�@HA�%"fa��Yw�)��A��Egةf���X�g˱��tQ���Eq�!�|K�@BHH:�t>�;�����1!ݝn�A�_UWw����{λ��sϽO�q汤��X,�q�z�<�q{cG.;��]�_�`9s��|o���:��1�E�V� ~=�	��ݮ����g[N�u�5$M��NI��-
�"(U*��@��"oqdYF�y�x�N�e�2���s����KҦ`L��Z)=,�Z}"
�A�n{�A@%$��R���F@�$m������[��H���"�VoD��v����Kw�d��v	�D�$>	�J��;�<�()P�� �F��
�< �R����&�կ��� ����������%�u̚VLNfڠus2�̚VL�~�>���mOMJ���J'R��������X����׬X�Ϲ虾��6Pq������j���S?�1@gL���±����(�2A�l��h��õm��Nb�l_�U���+����_����p�)9&&e)�0 �2{��������1���@LG�A��+���d�W|x�2-����Fk7�2x��y,_�_��}z��rzy��%n�-]l����L��;
�s���:��1�sL0�ڳ���X����m_]���BJ��im�  �d��I��Pq���N'�����lYz7�����}1�sL��v�UIX���<��Ó3���}���nvk)[����+bj�[���k�������cݮ��4t:= $h�4w:qz|A��٧�XSt�zn{�&��õmQ���+�^�j�*��S��e���o�V,	��q=Y�)hԪ��F5~����h�4 *�T�o��R���z�o)��W�]�Sm銺#�Qm�]�c�����v��JO��?D��B v|z�կ��܈�'�z6?[� ���p�X<-���o%�32����Ρz�>��5�BYX2���ʦ�b��>ǣ������SI,�6���|���iXYQ���U�҅e�9ma��:d`�iO����{��|��~����!+��Ϧ�u�n��7���t>�l捊Z�7�nвta�Z���Ae:��F���g�.~����_y^���K�5��.2�Zt*�{ܔ���G��6�Y����|%�M	���NPV.]��P���3�8g���COTy�� ����AP({�>�"/��g�0��<^��K���V����ϫ�zG�3K��k���t����)�������6���a�5��62Mq����oeJ�R�4�q�%|�� ������z���ä�>���0�T,��ǩ�����"lݰ���<��fT����IrX>� � ��K��q�}4���ʋo�dJ��م�X�sؘ]hfJ�����Ŧ�A�Gm߽�g����YG��X0u$�Y�u*jZl|p������*�Jd~qcR�����λ�.�
�r�4���zپ;��AD�eЪU��R�:��I���@�.��&3}l
o�坃7��ZX��O�� 2v����3��O���j�t	�W�0�n5����#è����%?}����`9۶n���7"!�uf��A�l܈�>��[�2��r��b�O�������gg�E��PyX�Q2-7���ʕ������p��+���~f��;����T	�*�(+q@���f��ϫ����ѓ���a��U�\.��&��}�=dd'�p�l�e@y��
r�����zDA@����9�:��8�Y,�����=�l�֮��F|kM�R��GJK��*�V_k+��P�,N.�9��K~~~�HYY��O��k���Q�����|rss�����1��ILN��~�YDV��-s�lfB֬Y�#.�=�>���G\k֬fB�f3��?��k~���f�IR�lS'�m>²9y���+ �v��y��M;NlF���A���w���w�b���Л�j�d��#T��b���e��[l<��(Z�D�NMC���k|Zi�������Ɗl��@�1��v��Щ�!曣�n��S������<@̠7�w�4X�D<A`�ԑ�ML����jw���c��8��ES��X��������ƤS�~�׾�%n�@��( Zm\�raҩ���x��_���n�n���2&d(�6�,8^o�TcG���3���emv7m6g.w��W�e
�h���|��Wy��~���̽�!c� �ݟO�)|�6#?�%�,O֫9y������w��{r�2e��7Dl �ׇB�2�@���ĬD4J)�&�$
�HԲ��
/�߹�m��<JF'!�>���S��PJ"V5!�A�(��F>SD�ۻ�$�B/>lΞ�.Ϭ�?p�l6h�D��+v�l�+v$Q�B0ūz����aԩh�|9�p����cƄ,��=Z�����������Dc��,P��� $ƩЩ�]��o+�F$p�|uM���8R��L�0�@e'���M�]^��jt*:��)^�N�@�V`�*�js�up��X�n���tt{�t:�����\�]>�n/W�\|q.x��0���D-���T��7G5jzi���[��4�r���Ij������p�=a�G�5���ͺ��S���/��#�B�EA�s�)HO`���U�/QM���cdz
�,�!�(���g�m+<R��?�-`�4^}�#>�<��mp��Op{�,[<��iz^�s�cü-�;���쾱d����xk瞨eH)��x@���h�ɪZNU_��cxx�hƤ�cwzi�p]��Q��cbɽcx��t�����M|�����x�=S�N���
Ͽ�Ee3HL�����gg,���NecG�S_ѠQJf(�Jd�4R�j��6�|�6��s<Q��N0&Ge
��Ʌ��,ᮢ$I�痹�j���Nc���'�N�n�=>|~�G��2�)�D�R U���&ՠ!#1���S�D��Ǘ'��ೃT��E�7��F��(?�����s��F��pC�Z�:�m�p�l-'�j9QU��:��a3@0�*%�#�)&�q�i�H��1�'��vv���q8]t�4����j��t-}IـxY�����C}c��-�"?Z�o�8�4Ⱦ���J]/�v�g���Cȷ2]�.�Ǣ ��Ս�{0
�>/^W7�_�����mV铲�
i���FR��$>��}^��dُ�۵�����%��*C�'�x�d9��v�ߏ � ���ۣ�Wg=N�n�~������/�}�_��M��[���uR�N���(E�	� ������z��~���.m9w����c����
�?���{�    IEND�B`�       ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Casino Manager     application/run/main_scene          res://Scene/Main.tscn      application/config/icon         res://icon.png  )   rendering/environment/default_environment          res://default_env.tres         GDPC