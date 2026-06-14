; =========================================================
; Game Engine Function: _ZN7CClouds20VolumetricCloudsInitEv
; Address            : 0x59E780 - 0x59E9F8
; =========================================================

59E780:  PUSH            {R4,R6,R7,LR}
59E782:  ADD             R7, SP, #8
59E784:  LDR             R0, =(_ZN7CClouds5ms_vcE_ptr - 0x59E796)
59E786:  MOV.W           R2, #(dword_A25348 - 0xA23E28)
59E78A:  MOV.W           R4, #0x3F800000
59E78E:  MOVW            R3, #(dword_A25344 - 0xA23E28)
59E792:  ADD             R0, PC; _ZN7CClouds5ms_vcE_ptr
59E794:  ADR             R1, dword_59EA00
59E796:  VLD1.64         {D16-D17}, [R1@128]
59E79A:  ADR             R1, dword_59EA10
59E79C:  MOV.W           R12, #0xBF000000
59E7A0:  MOVW            LR, #(dword_A253F8 - 0xA23E28)
59E7A4:  LDR             R0, [R0]; CClouds::ms_vc ...
59E7A6:  VMOV.I32        Q9, #0
59E7AA:  VLD1.64         {D20-D21}, [R1@128]
59E7AE:  MOVW            R1, #(dword_A25440 - 0xA23E28)
59E7B2:  STR             R4, [R0,R2]
59E7B4:  MOVS            R2, #0
59E7B6:  STR             R2, [R0,R3]
59E7B8:  MOVW            R3, #(dword_A253B0 - 0xA23E28)
59E7BC:  STR             R2, [R0,R3]
59E7BE:  MOV.W           R3, #(dword_A25368 - 0xA23E28)
59E7C2:  STR.W           R12, [R0,R3]
59E7C6:  MOV.W           R3, #0x3F000000
59E7CA:  STR.W           R3, [R0,LR]
59E7CE:  STR             R2, [R0,R1]
59E7D0:  MOV.W           R1, #(dword_A25488 - 0xA23E28)
59E7D4:  STR             R2, [R0,R1]
59E7D6:  MOVW            R1, #(dword_A2536C - 0xA23E28)
59E7DA:  STR             R3, [R0,R1]
59E7DC:  MOVW            R1, #(dword_A253B4 - 0xA23E28)
59E7E0:  STR             R2, [R0,R1]
59E7E2:  MOVW            R1, #(dword_A253FC - 0xA23E28)
59E7E6:  STR             R3, [R0,R1]
59E7E8:  MOVW            R1, #(dword_A25444 - 0xA23E28)
59E7EC:  STR             R4, [R0,R1]
59E7EE:  MOVW            R1, #(dword_A2548C - 0xA23E28)
59E7F2:  STR             R2, [R0,R1]
59E7F4:  MOVW            R1, #(dword_A25370 - 0xA23E28)
59E7F8:  STR.W           R12, [R0,R1]
59E7FC:  MOVW            R1, #(dword_A253B8 - 0xA23E28)
59E800:  STR             R2, [R0,R1]
59E802:  MOVW            R1, #(dword_A25400 - 0xA23E28)
59E806:  STR.W           R12, [R0,R1]
59E80A:  MOVW            R1, #(dword_A25490 - 0xA23E28)
59E80E:  STR             R4, [R0,R1]
59E810:  MOVW            R1, #(dword_A25374 - 0xA23E28)
59E814:  STR             R3, [R0,R1]
59E816:  MOVW            R1, #(dword_A253BC - 0xA23E28)
59E81A:  STR             R2, [R0,R1]
59E81C:  MOVW            R1, #(dword_A25404 - 0xA23E28)
59E820:  STR             R3, [R0,R1]
59E822:  MOVW            R1, #(dword_A2534C - 0xA23E28)
59E826:  STR             R2, [R0,R1]
59E828:  MOVW            R1, #(dword_A25378 - 0xA23E28)
59E82C:  STR             R3, [R0,R1]
59E82E:  MOVW            R1, #(dword_A25494 - 0xA23E28)
59E832:  STR             R2, [R0,R1]
59E834:  MOVW            R1, #(dword_A253C0 - 0xA23E28)
59E838:  STR             R2, [R0,R1]
59E83A:  MOV.W           R1, #(dword_A25408 - 0xA23E28)
59E83E:  STR.W           R12, [R0,R1]
59E842:  MOVW            R1, #(dword_A25498 - 0xA23E28)
59E846:  STR             R4, [R0,R1]
59E848:  MOVW            R1, #(dword_A2537C - 0xA23E28)
59E84C:  STR.W           R12, [R0,R1]
59E850:  MOVW            R1, #(dword_A253C4 - 0xA23E28)
59E854:  STR             R2, [R0,R1]
59E856:  MOVW            R1, #(dword_A2540C - 0xA23E28)
59E85A:  STR.W           R12, [R0,R1]
59E85E:  MOVW            R1, #(dword_A2549C - 0xA23E28)
59E862:  STR             R4, [R0,R1]
59E864:  MOVW            R1, #(dword_A25354 - 0xA23E28)
59E868:  STR             R2, [R0,R1]
59E86A:  MOVW            R1, #(dword_A25350 - 0xA23E28)
59E86E:  STR             R2, [R0,R1]
59E870:  MOVW            R1, #(dword_A25358 - 0xA23E28)
59E874:  STR             R4, [R0,R1]
59E876:  MOVW            R1, #(dword_A25380 - 0xA23E28)
59E87A:  STR.W           R12, [R0,R1]
59E87E:  MOV.W           R1, #(dword_A253C8 - 0xA23E28)
59E882:  STR             R3, [R0,R1]
59E884:  MOVW            R1, #(dword_A25410 - 0xA23E28)
59E888:  STR             R2, [R0,R1]
59E88A:  MOVW            R1, #(dword_A25458 - 0xA23E28)
59E88E:  STR             R2, [R0,R1]
59E890:  MOVW            R1, #(dword_A254A0 - 0xA23E28)
59E894:  STR             R2, [R0,R1]
59E896:  MOVW            R1, #(dword_A25384 - 0xA23E28)
59E89A:  STR             R3, [R0,R1]
59E89C:  MOVW            R1, #(dword_A253CC - 0xA23E28)
59E8A0:  STR             R3, [R0,R1]
59E8A2:  MOVW            R1, #(dword_A25414 - 0xA23E28)
59E8A6:  STR             R2, [R0,R1]
59E8A8:  MOVW            R1, #(dword_A2545C - 0xA23E28)
59E8AC:  STR             R4, [R0,R1]
59E8AE:  MOVW            R1, #(dword_A254A4 - 0xA23E28)
59E8B2:  STR             R2, [R0,R1]
59E8B4:  MOV.W           R1, #(dword_A25388 - 0xA23E28)
59E8B8:  STR.W           R12, [R0,R1]
59E8BC:  MOVW            R1, #(dword_A253D0 - 0xA23E28)
59E8C0:  STR.W           R12, [R0,R1]
59E8C4:  MOVW            R1, #(dword_A25460 - 0xA23E28)
59E8C8:  STR             R2, [R0,R1]
59E8CA:  MOV.W           R1, #(dword_A254A8 - 0xA23E28)
59E8CE:  STR             R4, [R0,R1]
59E8D0:  MOVW            R1, #(dword_A2538C - 0xA23E28)
59E8D4:  STR             R3, [R0,R1]
59E8D6:  MOVW            R1, #(dword_A253D4 - 0xA23E28)
59E8DA:  STR             R3, [R0,R1]
59E8DC:  ADD.W           R1, R0, #0x1620
59E8E0:  VST1.32         {D20-D21}, [R1]
59E8E4:  MOVW            R1, #(dword_A254AC - 0xA23E28)
59E8E8:  STR             R2, [R0,R1]
59E8EA:  MOVW            R1, #(dword_A25464 - 0xA23E28)
59E8EE:  STR             R4, [R0,R1]
59E8F0:  MOVW            R1, #(dword_A25390 - 0xA23E28)
59E8F4:  STR             R3, [R0,R1]
59E8F6:  MOVW            R1, #(dword_A253D8 - 0xA23E28)
59E8FA:  STR.W           R12, [R0,R1]
59E8FE:  MOV.W           R1, #(dword_A25468 - 0xA23E28)
59E902:  STR             R4, [R0,R1]
59E904:  MOVW            R1, #(dword_A254B0 - 0xA23E28)
59E908:  STR             R4, [R0,R1]
59E90A:  MOVW            R1, #(dword_A25394 - 0xA23E28)
59E90E:  STR.W           R12, [R0,R1]
59E912:  MOVW            R1, #(dword_A253DC - 0xA23E28)
59E916:  STR.W           R12, [R0,R1]
59E91A:  MOVW            R1, #(dword_A2546C - 0xA23E28)
59E91E:  STR             R2, [R0,R1]
59E920:  MOVW            R1, #(dword_A254B4 - 0xA23E28)
59E924:  STR             R4, [R0,R1]
59E926:  MOVW            R1, #(dword_A25360 - 0xA23E28)
59E92A:  STR             R2, [R0,R1]
59E92C:  MOVW            R1, #(dword_A2535C - 0xA23E28)
59E930:  STR             R4, [R0,R1]
59E932:  MOVW            R1, #(dword_A25364 - 0xA23E28)
59E936:  STR             R2, [R0,R1]
59E938:  MOVW            R1, #(dword_A25398 - 0xA23E28)
59E93C:  STR             R2, [R0,R1]
59E93E:  MOVW            R1, #(dword_A253E0 - 0xA23E28)
59E942:  STR.W           R12, [R0,R1]
59E946:  MOV.W           R1, #(dword_A25428 - 0xA23E28)
59E94A:  STR             R3, [R0,R1]
59E94C:  MOVW            R1, #(dword_A25470 - 0xA23E28)
59E950:  STR             R2, [R0,R1]
59E952:  MOVW            R1, #(dword_A254B8 - 0xA23E28)
59E956:  STR             R2, [R0,R1]
59E958:  MOVW            R1, #(dword_A2539C - 0xA23E28)
59E95C:  STR             R2, [R0,R1]
59E95E:  MOVW            R1, #(dword_A253E4 - 0xA23E28)
59E962:  STR             R3, [R0,R1]
59E964:  MOVW            R1, #(dword_A2542C - 0xA23E28)
59E968:  STR             R3, [R0,R1]
59E96A:  MOVW            R1, #(dword_A25474 - 0xA23E28)
59E96E:  STR             R4, [R0,R1]
59E970:  MOVW            R1, #(dword_A254BC - 0xA23E28)
59E974:  STR             R2, [R0,R1]
59E976:  MOVW            R1, #(dword_A253A0 - 0xA23E28)
59E97A:  STR             R2, [R0,R1]
59E97C:  MOVW            R1, #(dword_A25430 - 0xA23E28)
59E980:  STR.W           R12, [R0,R1]
59E984:  MOVW            R1, #(dword_A25478 - 0xA23E28)
59E988:  STR             R2, [R0,R1]
59E98A:  MOVW            R1, #(dword_A254C0 - 0xA23E28)
59E98E:  STR             R4, [R0,R1]
59E990:  MOVW            R1, #(dword_A253A4 - 0xA23E28)
59E994:  STR             R2, [R0,R1]
59E996:  MOVW            R1, #(dword_A25434 - 0xA23E28)
59E99A:  STR             R3, [R0,R1]
59E99C:  MOVW            R1, #0x15F0
59E9A0:  ADD             R1, R0
59E9A2:  VST1.32         {D18-D19}, [R1]
59E9A6:  MOVW            R1, #(dword_A254C4 - 0xA23E28)
59E9AA:  STR             R2, [R0,R1]
59E9AC:  MOVW            R1, #(dword_A2547C - 0xA23E28)
59E9B0:  STR             R4, [R0,R1]
59E9B2:  MOV.W           R1, #(dword_A253A8 - 0xA23E28)
59E9B6:  STR             R2, [R0,R1]
59E9B8:  MOVW            R1, #(dword_A25438 - 0xA23E28)
59E9BC:  STR.W           R12, [R0,R1]
59E9C0:  MOVW            R1, #(dword_A25480 - 0xA23E28)
59E9C4:  STR             R4, [R0,R1]
59E9C6:  MOV.W           R1, #(dword_A254C8 - 0xA23E28)
59E9CA:  STR             R4, [R0,R1]
59E9CC:  MOVW            R1, #(dword_A253AC - 0xA23E28)
59E9D0:  STR             R2, [R0,R1]
59E9D2:  MOVW            R1, #(dword_A2543C - 0xA23E28)
59E9D6:  STR.W           R12, [R0,R1]
59E9DA:  MOVW            R1, #(dword_A25484 - 0xA23E28)
59E9DE:  STR             R2, [R0,R1]
59E9E0:  MOVW            R1, #(dword_A254CC - 0xA23E28)
59E9E4:  STR             R4, [R0,R1]
59E9E6:  ADD.W           R1, R0, #0x15C0
59E9EA:  VST1.32         {D16-D17}, [R1]
59E9EE:  MOV.W           R1, #0x168
59E9F2:  BLX.W           j___aeabi_memclr8_0
59E9F6:  POP             {R4,R6,R7,PC}
