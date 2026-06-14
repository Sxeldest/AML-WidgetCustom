; =========================================================
; Game Engine Function: _ZN14CTrafficLights16IsMITrafficLightEi
; Address            : 0x36390C - 0x363984
; =========================================================

36390C:  LDR             R1, =(MI_TRAFFICLIGHTS_ptr - 0x363912)
36390E:  ADD             R1, PC; MI_TRAFFICLIGHTS_ptr
363910:  LDR             R1, [R1]; MI_TRAFFICLIGHTS
363912:  LDRH            R1, [R1]
363914:  CMP             R1, R0
363916:  BEQ             loc_36396C
363918:  LDR             R1, =(MI_TRAFFICLIGHTS_VERTICAL_ptr - 0x36391E)
36391A:  ADD             R1, PC; MI_TRAFFICLIGHTS_VERTICAL_ptr
36391C:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VERTICAL
36391E:  LDRH            R1, [R1]
363920:  CMP             R1, R0
363922:  BEQ             loc_36396C
363924:  LDR             R1, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x36392A)
363926:  ADD             R1, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
363928:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_MIAMI
36392A:  LDRH            R1, [R1]
36392C:  CMP             R1, R0
36392E:  BEQ             loc_36396C
363930:  LDR             R1, =(MI_TRAFFICLIGHTS_VEGAS_ptr - 0x363936)
363932:  ADD             R1, PC; MI_TRAFFICLIGHTS_VEGAS_ptr
363934:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VEGAS
363936:  LDRH            R1, [R1]
363938:  CMP             R1, R0
36393A:  BEQ             loc_36396C
36393C:  LDR             R1, =(MI_TRAFFICLIGHTS_TWOVERTICAL_ptr - 0x363942)
36393E:  ADD             R1, PC; MI_TRAFFICLIGHTS_TWOVERTICAL_ptr
363940:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_TWOVERTICAL
363942:  LDRH            R1, [R1]
363944:  CMP             R1, R0
363946:  BEQ             loc_36396C
363948:  LDR             R1, =(MI_TRAFFICLIGHTS_3_ptr - 0x36394E)
36394A:  ADD             R1, PC; MI_TRAFFICLIGHTS_3_ptr
36394C:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_3
36394E:  LDRH            R1, [R1]
363950:  CMP             R1, R0
363952:  BEQ             loc_36396C
363954:  LDR             R1, =(MI_TRAFFICLIGHTS_4_ptr - 0x36395A)
363956:  ADD             R1, PC; MI_TRAFFICLIGHTS_4_ptr
363958:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_4
36395A:  LDRH            R1, [R1]
36395C:  CMP             R1, R0
36395E:  BEQ             loc_36396C
363960:  LDR             R1, =(MI_TRAFFICLIGHTS_GAY_ptr - 0x363966)
363962:  ADD             R1, PC; MI_TRAFFICLIGHTS_GAY_ptr
363964:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_GAY
363966:  LDRH            R1, [R1]
363968:  CMP             R1, R0
36396A:  BNE             loc_363970
36396C:  MOVS            R0, #1
36396E:  BX              LR
363970:  LDR             R1, =(MI_TRAFFICLIGHTS_5_ptr - 0x363976)
363972:  ADD             R1, PC; MI_TRAFFICLIGHTS_5_ptr
363974:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_5
363976:  LDRH            R2, [R1]
363978:  MOVS            R1, #0
36397A:  CMP             R2, R0
36397C:  IT EQ
36397E:  MOVEQ           R1, #1
363980:  MOV             R0, R1
363982:  BX              LR
