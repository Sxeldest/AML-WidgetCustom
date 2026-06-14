; =========================================================
; Game Engine Function: _ZN18CHIDJoystickAmazon18FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28D8C0 - 0x28DA48
; =========================================================

28D8C0:  PUSH            {R4-R7,LR}
28D8C2:  ADD             R7, SP, #0xC
28D8C4:  PUSH.W          {R8-R10}
28D8C8:  MOV             R8, R0
28D8CA:  LDR             R0, [R1,#8]
28D8CC:  MOV             R9, R2
28D8CE:  CMP             R0, #0
28D8D0:  BEQ.W           loc_28D9C6
28D8D4:  LDR             R1, [R1,#0xC]
28D8D6:  MOVS            R2, #0
28D8D8:  MOV.W           R10, #0
28D8DC:  MOVS            R5, #0
28D8DE:  ADDS            R1, #4
28D8E0:  LDR             R6, [R1]
28D8E2:  CMP             R6, R3
28D8E4:  BNE.W           def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D8E8:  LDR.W           R6, [R1,#-4]
28D8EC:  CMP             R6, #0x45 ; 'E'; switch 70 cases
28D8EE:  BHI.W           def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D8F2:  TBB.W           [PC,R6]; switch jump
28D8F6:  DCB 0x23; jump table for switch statement
28D8F7:  DCB 0x23
28D8F8:  DCB 0x23
28D8F9:  DCB 0x23
28D8FA:  DCB 0x2F
28D8FB:  DCB 0x58
28D8FC:  DCB 0x32
28D8FD:  DCB 0x36
28D8FE:  DCB 0x3A
28D8FF:  DCB 0x3E
28D900:  DCB 0x41
28D901:  DCB 0x45
28D902:  DCB 0x49
28D903:  DCB 0x4D
28D904:  DCB 0x58
28D905:  DCB 0x58
28D906:  DCB 0x58
28D907:  DCB 0x58
28D908:  DCB 0x58
28D909:  DCB 0x58
28D90A:  DCB 0x58
28D90B:  DCB 0x58
28D90C:  DCB 0x58
28D90D:  DCB 0x58
28D90E:  DCB 0x58
28D90F:  DCB 0x58
28D910:  DCB 0x58
28D911:  DCB 0x58
28D912:  DCB 0x58
28D913:  DCB 0x58
28D914:  DCB 0x58
28D915:  DCB 0x58
28D916:  DCB 0x58
28D917:  DCB 0x58
28D918:  DCB 0x58
28D919:  DCB 0x58
28D91A:  DCB 0x58
28D91B:  DCB 0x58
28D91C:  DCB 0x58
28D91D:  DCB 0x58
28D91E:  DCB 0x58
28D91F:  DCB 0x58
28D920:  DCB 0x58
28D921:  DCB 0x58
28D922:  DCB 0x58
28D923:  DCB 0x58
28D924:  DCB 0x58
28D925:  DCB 0x58
28D926:  DCB 0x58
28D927:  DCB 0x58
28D928:  DCB 0x58
28D929:  DCB 0x58
28D92A:  DCB 0x58
28D92B:  DCB 0x58
28D92C:  DCB 0x58
28D92D:  DCB 0x58
28D92E:  DCB 0x58
28D92F:  DCB 0x58
28D930:  DCB 0x58
28D931:  DCB 0x58
28D932:  DCB 0x58
28D933:  DCB 0x58
28D934:  DCB 0x58
28D935:  DCB 0x58
28D936:  DCB 0x27
28D937:  DCB 0x27
28D938:  DCB 0x2B
28D939:  DCB 0x2B
28D93A:  DCB 0x51
28D93B:  DCB 0x55
28D93C:  MOV.W           R10, #1; jumptable 0028D8F2 cases 0-3
28D940:  MOV             R5, R6
28D942:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D944:  MOV.W           R10, #3; jumptable 0028D8F2 cases 64,65
28D948:  MOVS            R5, #0
28D94A:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D94C:  MOV.W           R10, #4; jumptable 0028D8F2 cases 66,67
28D950:  MOVS            R5, #0
28D952:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D954:  MOV.W           R10, #0; jumptable 0028D8F2 case 4
28D958:  B               loc_28D9A4
28D95A:  MOVS            R5, #2; jumptable 0028D8F2 case 6
28D95C:  MOV.W           R10, #2
28D960:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D962:  MOV.W           R10, #2; jumptable 0028D8F2 case 7
28D966:  MOVS            R5, #3
28D968:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D96A:  MOV.W           R10, #3; jumptable 0028D8F2 case 8
28D96E:  MOVS            R5, #4
28D970:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D972:  MOV.W           R10, #3; jumptable 0028D8F2 case 9
28D976:  B               loc_28D9A4
28D978:  MOV.W           R10, #3; jumptable 0028D8F2 case 10
28D97C:  MOVS            R5, #2
28D97E:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D980:  MOVS            R5, #3; jumptable 0028D8F2 case 11
28D982:  MOV.W           R10, #3
28D986:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D988:  MOV.W           R10, #5; jumptable 0028D8F2 case 12
28D98C:  MOVS            R5, #0
28D98E:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D990:  MOV.W           R10, #6; jumptable 0028D8F2 case 13
28D994:  MOVS            R5, #0
28D996:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D998:  MOV.W           R10, #2; jumptable 0028D8F2 case 68
28D99C:  MOVS            R5, #0
28D99E:  B               def_28D8F2; jumptable 0028D8F2 default case, cases 5,14-63
28D9A0:  MOV.W           R10, #2; jumptable 0028D8F2 case 69
28D9A4:  MOVS            R5, #1
28D9A6:  ADDS            R2, #1; jumptable 0028D8F2 default case, cases 5,14-63
28D9A8:  ADDS            R1, #0x14
28D9AA:  CMP             R2, R0
28D9AC:  BCC.W           loc_28D8E0
28D9B0:  CMP.W           R9, #0
28D9B4:  BEQ             loc_28D9D2
28D9B6:  ADR             R1, aWidgetPedMoveL; "widget_ped_move_left"
28D9B8:  MOV             R0, R9; haystack
28D9BA:  BLX             strstr
28D9BE:  CBZ             R0, loc_28D9D6
28D9C0:  MOVS            R6, #5
28D9C2:  MOVS            R5, #2
28D9C4:  B               loc_28D9E4
28D9C6:  MOVS            R5, #0
28D9C8:  MOV.W           R10, #0
28D9CC:  CMP.W           R9, #0
28D9D0:  BNE             loc_28D9B6
28D9D2:  MOV             R6, R10
28D9D4:  B               loc_28D9E4
28D9D6:  ADR             R1, aWidgetPedMoveR; "widget_ped_move_right"
28D9D8:  MOV             R0, R9; haystack
28D9DA:  BLX             strstr
28D9DE:  CBZ             R0, loc_28DA0E
28D9E0:  MOVS            R6, #5
28D9E2:  MOVS            R5, #3
28D9E4:  VMOV.32         D16[0], R5
28D9E8:  ADDS            R0, R5, #1
28D9EA:  VMOV.I32        Q9, #0x3E000000
28D9EE:  VMOV.32         D17[0], R0
28D9F2:  ADDS            R0, R6, #1
28D9F4:  VMOV.32         D16[1], R0
28D9F8:  VMOV.32         D17[1], R6
28D9FC:  VCVT.F32.S32    Q8, Q8
28DA00:  VMUL.F32        Q8, Q8, Q9
28DA04:  VST1.32         {D16-D17}, [R8]
28DA08:  POP.W           {R8-R10}
28DA0C:  POP             {R4-R7,PC}
28DA0E:  ADR             R1, aWidgetVehicleS; "widget_vehicle_steer_left"
28DA10:  MOV             R0, R9; haystack
28DA12:  BLX             strstr
28DA16:  CMP             R0, #0
28DA18:  BNE             loc_28D9C0
28DA1A:  ADR             R1, aWidgetVehicleS_0; "widget_vehicle_steer_right"
28DA1C:  MOV             R0, R9; haystack
28DA1E:  BLX             strstr
28DA22:  CMP             R0, #0
28DA24:  BNE             loc_28D9E0
28DA26:  ADR             R1, aWidgetPedMoveU; "widget_ped_move_up"
28DA28:  MOV             R0, R9; haystack
28DA2A:  BLX             strstr
28DA2E:  MOVS            R6, #5
28DA30:  CBZ             R0, loc_28DA36
28DA32:  MOVS            R5, #4
28DA34:  B               loc_28D9E4
28DA36:  ADR             R1, aWidgetPedMoveD; "widget_ped_move_down"
28DA38:  MOV             R0, R9; haystack
28DA3A:  BLX             strstr
28DA3E:  CMP             R0, #0
28DA40:  ITE EQ
28DA42:  MOVEQ           R6, R10
28DA44:  MOVNE           R5, #1
28DA46:  B               loc_28D9E4
