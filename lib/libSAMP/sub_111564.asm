; =========================================================
; Game Engine Function: sub_111564
; Address            : 0x111564 - 0x1116F8
; =========================================================

111564:  PUSH            {R4-R7,LR}
111566:  ADD             R7, SP, #0xC
111568:  PUSH.W          {R8-R11}
11156C:  SUB             SP, SP, #0x5C
11156E:  VMOV.I32        Q8, #0
111572:  MOV             R9, R0
111574:  LDR             R0, =(_ZTVN7sigslot10connectionE - 0x111586); `vtable for'sigslot::connection ...
111576:  ADD.W           R4, R9, #4
11157A:  MOVS            R1, #0
11157C:  MOVS            R5, #0
11157E:  VST1.32         {D16-D17}, [R4]!
111582:  ADD             R0, PC; `vtable for'sigslot::connection
111584:  ADD.W           R6, R0, #8
111588:  MOVT            R1, #0x4334
11158C:  MOV             R0, R4
11158E:  STRD.W          R5, R1, [R9,#0x28]
111592:  VST1.32         {D16-D17}, [R0]!
111596:  STR.W           R6, [R9]
11159A:  STR             R5, [R0]
11159C:  STRD.W          R6, R4, [SP,#0x78+var_78]
1115A0:  BL              sub_115004
1115A4:  MOV             R1, R0
1115A6:  LDR             R0, =(sub_1118C0+1 - 0x1115AE)
1115A8:  STR             R5, [SP,#0x78+var_4C]
1115AA:  ADD             R0, PC; sub_1118C0
1115AC:  STRD.W          R9, R0, [SP,#0x78+var_54]
1115B0:  ADD             R0, SP, #0x78+var_38
1115B2:  ADD             R2, SP, #0x78+var_50
1115B4:  ADD             R3, SP, #0x78+var_54
1115B6:  BL              sub_1117B4
1115BA:  LDRD.W          R0, R1, [SP,#0x78+var_34]
1115BE:  STR.W           R0, [R9,#4]
1115C2:  LDR.W           R0, [R9,#8]; this
1115C6:  STR.W           R1, [R9,#8]
1115CA:  MOVS            R1, #0
1115CC:  STRD.W          R1, R1, [SP,#0x78+var_34]
1115D0:  CBZ             R0, loc_1115E0
1115D2:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1115D6:  LDR             R0, [SP,#0x78+var_30]; this
1115D8:  STR             R6, [SP,#0x78+var_38]
1115DA:  CBZ             R0, loc_1115E0
1115DC:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
1115E0:  LDR             R0, =(off_23494C - 0x1115E6)
1115E2:  ADD             R0, PC; off_23494C
1115E4:  LDR.W           R11, [R0]; dword_23DF24
1115E8:  LDR.W           R8, [R11]
1115EC:  LDR             R1, =(sub_11194C+1 - 0x1115F2)
1115EE:  ADD             R1, PC; sub_11194C
1115F0:  ADD             R0, SP, #0x78+var_70
1115F2:  MOVS            R2, #0
1115F4:  MOV             R3, R9
1115F6:  BL              sub_1119A4
1115FA:  ADD             R5, SP, #0x78+var_50
1115FC:  ADD             R4, SP, #0x78+var_70
1115FE:  MOV             R0, R5
111600:  MOV             R1, R4
111602:  BL              sub_10CD74
111606:  BL              sub_112128
11160A:  LDR             R0, =(unk_263440 - 0x111610)
11160C:  ADD             R0, PC; unk_263440
11160E:  LDR.W           R10, [R0,#(dword_263450 - 0x263440)]
111612:  CMP.W           R10, #0
111616:  BNE             loc_111648
111618:  ADD             R6, SP, #0x78+var_50
11161A:  ADD             R0, SP, #0x78+var_38
11161C:  MOV             R1, R6
11161E:  BL              sub_10CD74
111622:  BL              sub_112128
111626:  LDR             R0, =(unk_263440 - 0x11162C)
111628:  ADD             R0, PC; unk_263440
11162A:  ADD             R6, SP, #0x78+var_38
11162C:  MOV             R1, R6
11162E:  BL              sub_10CDA0
111632:  LDR             R0, [SP,#0x78+var_28]
111634:  CMP             R6, R0
111636:  BEQ             loc_11163E
111638:  CBZ             R0, loc_111648
11163A:  MOVS            R1, #5
11163C:  B               loc_111640
11163E:  MOVS            R1, #4
111640:  LDR             R2, [R0]
111642:  LDR.W           R1, [R2,R1,LSL#2]
111646:  BLX             R1
111648:  LDR             R0, [SP,#0x78+var_40]
11164A:  CMP             R5, R0
11164C:  BEQ             loc_111654
11164E:  CBZ             R0, loc_11165E
111650:  MOVS            R1, #5
111652:  B               loc_111656
111654:  MOVS            R1, #4
111656:  LDR             R2, [R0]
111658:  LDR.W           R1, [R2,R1,LSL#2]
11165C:  BLX             R1
11165E:  CMP.W           R10, #0
111662:  BNE             loc_11167A
111664:  MOVW            R0, #0xF618
111668:  LDR             R1, =(sub_112104+1 - 0x111678)
11166A:  MOVT            R0, #0x66 ; 'f'
11166E:  ADD.W           R2, R9, #0xC
111672:  ADD             R0, R8
111674:  ADD             R1, PC; sub_112104
111676:  BL              sub_164196
11167A:  LDR             R0, [SP,#0x78+var_60]
11167C:  CMP             R4, R0
11167E:  BEQ             loc_111686
111680:  CBZ             R0, loc_111690
111682:  MOVS            R1, #5
111684:  B               loc_111688
111686:  MOVS            R1, #4
111688:  LDR             R2, [R0]
11168A:  LDR.W           R1, [R2,R1,LSL#2]
11168E:  BLX             R1
111690:  CMP.W           R10, #0
111694:  BEQ             loc_1116A4
111696:  LDR             R1, =(aAxl - 0x11169E); "AXL" ...
111698:  LDR             R2, =(aCanTInstallHoo - 0x1116A0); "Can't install hook on draw_radar. Callb"... ...
11169A:  ADD             R1, PC; "AXL"
11169C:  ADD             R2, PC; "Can't install hook on draw_radar. Callb"...
11169E:  MOVS            R0, #6; prio
1116A0:  BLX             __android_log_print
1116A4:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN12custom_radarC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x1116B0); `vtable for'std::__function::__func<custom_radar::custom_radar(void)::$_0,std::allocator<custom_radar::custom_radar(void)::$_0>,void ()(void)> ...
1116A6:  ADD             R6, SP, #0x78+var_38
1116A8:  LDR.W           R1, [R11]
1116AC:  ADD             R0, PC; `vtable for'std::__function::__func<custom_radar::custom_radar(void)::$_0,std::allocator<custom_radar::custom_radar(void)::$_0>,void ()(void)>
1116AE:  STR             R6, [SP,#0x78+var_28]
1116B0:  ADDS            R0, #8
1116B2:  STR             R0, [SP,#0x78+var_38]
1116B4:  ADD.W           R0, R1, #0x200000
1116B8:  STR.W           R9, [SP,#0x78+var_34]
1116BC:  ADD.W           R0, R0, #0x1F6000
1116C0:  MOV             R1, R6
1116C2:  BL              sub_1642EC
1116C6:  MOV             R5, R0
1116C8:  LDR             R0, [SP,#0x78+var_28]
1116CA:  CMP             R6, R0
1116CC:  BEQ             loc_1116D4
1116CE:  CBZ             R0, loc_1116DE
1116D0:  MOVS            R1, #5
1116D2:  B               loc_1116D6
1116D4:  MOVS            R1, #4
1116D6:  LDR             R2, [R0]
1116D8:  LDR.W           R1, [R2,R1,LSL#2]
1116DC:  BLX             R1
1116DE:  CBZ             R5, loc_1116EE
1116E0:  LDR             R1, =(aAxl - 0x1116E8); "AXL" ...
1116E2:  LDR             R2, =(aCanTRemapPage0 - 0x1116EA); "Can't remap page 0x3F6000 to restore co"... ...
1116E4:  ADD             R1, PC; "AXL"
1116E6:  ADD             R2, PC; "Can't remap page 0x3F6000 to restore co"...
1116E8:  MOVS            R0, #6; prio
1116EA:  BLX             __android_log_print
1116EE:  MOV             R0, R9
1116F0:  ADD             SP, SP, #0x5C ; '\'
1116F2:  POP.W           {R8-R11}
1116F6:  POP             {R4-R7,PC}
