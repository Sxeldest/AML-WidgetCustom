; =========================================================
; Game Engine Function: sub_8271C
; Address            : 0x8271C - 0x82E4E
; =========================================================

8271C:  PUSH            {R4-R7,LR}
8271E:  ADD             R7, SP, #0xC
82720:  PUSH.W          {R8-R11}
82724:  SUB             SP, SP, #0xF4
82726:  LDR             R6, =(byte_1A49FC - 0x82732)
82728:  MOV             R4, R0
8272A:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x82734)
8272E:  ADD             R6, PC; byte_1A49FC
82730:  ADD             R0, PC; __stack_chk_guard_ptr
82732:  LDR             R0, [R0]; __stack_chk_guard
82734:  LDR             R0, [R0]
82736:  STR             R0, [SP,#0x110+var_20]
82738:  LDRB            R0, [R6]
8273A:  CBZ             R0, loc_8275C
8273C:  MOVS            R6, #0
8273E:  LDR             R0, [SP,#0x110+var_20]
82740:  LDR.W           R1, =(__stack_chk_guard_ptr - 0x82748)
82744:  ADD             R1, PC; __stack_chk_guard_ptr
82746:  LDR             R1, [R1]; __stack_chk_guard
82748:  LDR             R1, [R1]
8274A:  CMP             R1, R0
8274C:  ITTTT EQ
8274E:  MOVEQ           R0, R6
82750:  ADDEQ           SP, SP, #0xF4
82752:  POPEQ.W         {R8-R11}
82756:  POPEQ           {R4-R7,PC}
82758:  BLX             __stack_chk_fail
8275C:  LDR             R0, =(off_114D20 - 0x82762)
8275E:  ADD             R0, PC; off_114D20
82760:  LDR             R0, [R0]; off_1ABF28
82762:  LDR             R0, [R0]
82764:  BLX             R0
82766:  CMP             R0, #0
82768:  BEQ             loc_8273C
8276A:  LDR             R0, =(aSvDbgRecordIni - 0x82770); "[sv:dbg:record:init] : module initializ"... ...
8276C:  ADD             R0, PC; "[sv:dbg:record:init] : module initializ"...
8276E:  BL              sub_80664
82772:  STR             R4, [SP,#0x110+var_100]
82774:  LDR             R0, =(dword_1A4A00 - 0x8277A)
82776:  ADD             R0, PC; dword_1A4A00
82778:  STR             R0, [SP,#0x110+var_F8]
8277A:  LDR             R4, [R0]
8277C:  LDR             R0, [R0,#(dword_1A4A04 - 0x1A4A00)]
8277E:  CMP             R0, R4
82780:  BEQ             loc_8279A
82782:  MOV             R5, R0
82784:  LDRB.W          R1, [R5,#-0xC]!
82788:  LSLS            R1, R1, #0x1F
8278A:  ITT NE
8278C:  LDRNE.W         R0, [R0,#-4]; void *
82790:  BLXNE           j__ZdlPv; operator delete(void *)
82794:  CMP             R5, R4
82796:  MOV             R0, R5
82798:  BNE             loc_82784
8279A:  STR             R6, [SP,#0x110+var_104]
8279C:  ADD.W           R11, SP, #0x110+s
827A0:  LDR             R2, =(dword_1A4A0C - 0x827AA)
827A2:  MOVS            R6, #0
827A4:  LDR             R1, [SP,#0x110+var_F8]
827A6:  ADD             R2, PC; dword_1A4A0C
827A8:  STR             R2, [SP,#0x110+var_FC]
827AA:  LDR             R0, [R2]
827AC:  STR             R0, [R2,#(dword_1A4A10 - 0x1A4A0C)]
827AE:  MOVS            R0, #0
827B0:  STR             R4, [R1,#4]
827B2:  STRD.W          R0, R0, [SP,#0x110+s]
827B6:  STR             R0, [SP,#0x110+var_30]
827B8:  LDR             R0, =(off_114D24 - 0x827BE)
827BA:  ADD             R0, PC; off_114D24
827BC:  LDR.W           R10, [R0]; off_1ABF2C
827C0:  LDR             R0, =(aNone - 0x827C6); "none" ...
827C2:  ADD             R0, PC; "none"
827C4:  STR             R0, [SP,#0x110+var_F0]
827C6:  LDR             R0, =(aSvDbgRecordIni_0 - 0x827CC); "[sv:dbg:record:init] : device detect [ "... ...
827C8:  ADD             R0, PC; "[sv:dbg:record:init] : device detect [ "...
827CA:  STR             R0, [SP,#0x110+var_F4]
827CC:  B               loc_827DA
827CE:  LDR             R0, =(dword_1A4A00 - 0x827D4)
827D0:  ADD             R0, PC; dword_1A4A00
827D2:  MOV             R1, R11
827D4:  BL              sub_83518
827D8:  ADDS            R6, #1
827DA:  LDR.W           R2, [R10]
827DE:  MOV             R0, R6
827E0:  MOV             R1, R11
827E2:  BLX             R2
827E4:  CMP             R0, #0
827E6:  BEQ.W           loc_8291C
827EA:  LDR             R5, [SP,#0x110+var_30]
827EC:  LDR             R0, [SP,#0x110+s]
827EE:  AND.W           R4, R5, #1
827F2:  AND.W           R1, R5, #0xFF000000
827F6:  CMP             R0, #0
827F8:  LDR             R2, [SP,#0x110+var_F0]
827FA:  IT EQ
827FC:  MOVEQ           R0, R2
827FE:  STRD.W          R0, R1, [SP,#0x110+var_110]
82802:  UBFX.W          R3, R5, #3, #1
82806:  LDR             R0, [SP,#0x110+var_F4]
82808:  MOV             R1, R6
8280A:  MOV             R2, R4
8280C:  BL              sub_80664
82810:  CMP             R4, #0
82812:  BEQ             loc_827D8
82814:  ANDS.W          R0, R5, #8
82818:  BNE             loc_827D8
8281A:  LDR             R0, [SP,#0x110+s]
8281C:  CMP             R0, #0
8281E:  BEQ             loc_827D8
82820:  LDR             R2, [SP,#0x110+var_FC]
82822:  LDRD.W          R1, R0, [R2,#4]
82826:  CMP             R1, R0
82828:  BCS             loc_82832
8282A:  STR.W           R6, [R1],#4
8282E:  STR             R1, [R2,#4]
82830:  B               loc_828B2
82832:  LDR.W           R9, [R2]
82836:  SUB.W           R8, R1, R9
8283A:  MOVS            R1, #1
8283C:  ADD.W           R5, R1, R8,ASR#2
82840:  CMP.W           R5, #0x40000000
82844:  BCS.W           loc_82E38
82848:  SUB.W           R0, R0, R9
8284C:  MOV             R1, #0x7FFFFFFC
82854:  CMP.W           R5, R0,ASR#1
82858:  IT LS
8285A:  ASRLS           R5, R0, #1
8285C:  CMP             R0, R1
8285E:  IT CS
82860:  MOVCS           R5, #0x3FFFFFFF
82864:  CBZ             R5, loc_82878
82866:  CMP.W           R5, #0x40000000
8286A:  BCS.W           loc_82E46
8286E:  LSLS            R0, R5, #2; unsigned int
82870:  BLX             j__Znwj; operator new(uint)
82874:  MOV             R4, R0
82876:  B               loc_8287A
82878:  MOVS            R4, #0
8287A:  MOV.W           R0, R8,ASR#2
8287E:  CMP.W           R8, #1
82882:  ADD.W           R11, R4, R0,LSL#2
82886:  STR.W           R6, [R11],#4
8288A:  BLT             loc_82896
8288C:  MOV             R0, R4; dest
8288E:  MOV             R1, R9; src
82890:  MOV             R2, R8; n
82892:  BLX             j_memcpy
82896:  LDR             R1, [SP,#0x110+var_FC]
82898:  CMP.W           R9, #0
8289C:  ADD.W           R0, R4, R5,LSL#2
828A0:  STRD.W          R4, R11, [R1]
828A4:  ADD.W           R11, SP, #0x110+s
828A8:  STR             R0, [R1,#8]
828AA:  ITT NE
828AC:  MOVNE           R0, R9; void *
828AE:  BLXNE           j__ZdlPv; operator delete(void *)
828B2:  LDR             R0, [SP,#0x110+var_F8]
828B4:  LDRD.W          R9, R0, [R0,#4]
828B8:  CMP             R9, R0
828BA:  BCS.W           loc_827CE
828BE:  LDR.W           R11, [SP,#0x110+s]
828C2:  MOV             R0, R11; s
828C4:  BLX             strlen
828C8:  CMN.W           R0, #0x10
828CC:  BCS.W           loc_82E40
828D0:  MOV             R5, R0
828D2:  CMP             R0, #0xB
828D4:  BCS             loc_828E2
828D6:  LSLS            R0, R5, #1
828D8:  MOV             R4, R9
828DA:  STRB.W          R0, [R4],#1
828DE:  CBNZ            R5, loc_828FE
828E0:  B               loc_82908
828E2:  ADD.W           R0, R5, #0x10
828E6:  BIC.W           R8, R0, #0xF
828EA:  MOV             R0, R8; unsigned int
828EC:  BLX             j__Znwj; operator new(uint)
828F0:  MOV             R4, R0
828F2:  ORR.W           R0, R8, #1
828F6:  STRD.W          R0, R5, [R9]
828FA:  STR.W           R4, [R9,#8]
828FE:  MOV             R0, R4; dest
82900:  MOV             R1, R11; src
82902:  MOV             R2, R5; n
82904:  BLX             j_memcpy
82908:  LDR             R1, [SP,#0x110+var_F8]
8290A:  MOVS            R0, #0
8290C:  STRB            R0, [R4,R5]
8290E:  ADD.W           R0, R9, #0xC
82912:  ADD.W           R11, SP, #0x110+s
82916:  STR             R0, [R1,#4]
82918:  ADDS            R6, #1
8291A:  B               loc_827DA
8291C:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_0NS_9allocatorIS3_EEFvvEEE - 0x82928); `vtable for'std::__function::__func<Record::Init(uint)::$_0,std::allocator<Record::Init(uint)::$_0>,void ()(void)> ...
8291E:  ADD             R1, SP, #0x110+var_50
82920:  LDR             R2, [SP,#0x110+var_F8]
82922:  STR             R1, [SP,#0x110+var_40]
82924:  ADD             R0, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_0,std::allocator<Record::Init(uint)::$_0>,void ()(void)>
82926:  LDRD.W          R1, R2, [R2]
8292A:  ADDS            R0, #8
8292C:  STR.W           R11, [SP,#0x110+var_28]
82930:  CMP             R1, R2
82932:  STR             R0, [SP,#0x110+var_50]
82934:  STR             R0, [SP,#0x110+s]
82936:  LDR             R1, [SP,#0x110+var_FC]
82938:  ITT NE
8293A:  LDRDNE.W        R0, R1, [R1]
8293E:  CMPNE           R0, R1
82940:  BNE             loc_8294C
82942:  LDR             R0, =(aSvInfRecordIni - 0x82948); "[sv:inf:record:init] : failed to find m"... ...
82944:  ADD             R0, PC; "[sv:inf:record:init] : failed to find m"...
82946:  BL              sub_80664
8294A:  B               loc_82AAE
8294C:  MOV.W           R0, #0xFFFFFFFF
82950:  STR             R0, [SP,#0x110+var_68]
82952:  ADD.W           R10, SP, #0x110+var_68
82956:  MOVW            R0, #0xBB80
8295A:  MOVS            R1, #1
8295C:  MOV.W           R2, #0x800
82960:  MOV             R3, R10
82962:  BLX             j_opus_encoder_create
82966:  LDR             R4, =(dword_1A4A18 - 0x82970)
82968:  CMP             R0, #0
8296A:  LDR             R1, [SP,#0x110+var_68]
8296C:  ADD             R4, PC; dword_1A4A18
8296E:  STR             R0, [R4]
82970:  BEQ.W           loc_82AA6
82974:  CMP.W           R1, #0xFFFFFFFF
82978:  BLE.W           loc_82AA6
8297C:  LDR             R1, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_1NS_9allocatorIS3_EEFvvEEE - 0x82986); `vtable for'std::__function::__func<Record::Init(uint)::$_1,std::allocator<Record::Init(uint)::$_1>,void ()(void)> ...
8297E:  ADD             R2, SP, #0x110+var_80
82980:  STR             R2, [SP,#0x110+var_70]
82982:  ADD             R1, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_1,std::allocator<Record::Init(uint)::$_1>,void ()(void)>
82984:  STR.W           R10, [SP,#0x110+var_58]
82988:  ADDS            R1, #8
8298A:  STR             R1, [SP,#0x110+var_80]
8298C:  STR             R1, [SP,#0x110+var_68]
8298E:  LDR             R2, [SP,#0x110+var_100]
82990:  MOVW            R1, #0xFA2
82994:  BLX             j_opus_encoder_ctl
82998:  MOV             R1, R0
8299A:  CMP.W           R1, #0xFFFFFFFF
8299E:  BLE.W           loc_82ADA
829A2:  LDR             R0, [R4]
829A4:  MOVW            R1, #0xFB8
829A8:  MOVW            R2, #0xBB9
829AC:  BLX             j_opus_encoder_ctl
829B0:  MOV             R1, R0
829B2:  CMP.W           R1, #0xFFFFFFFF
829B6:  BLE.W           loc_82B28
829BA:  LDR             R0, [R4]
829BC:  MOVW            R1, #0xFAA
829C0:  MOVS            R2, #0xA
829C2:  BLX             j_opus_encoder_ctl
829C6:  MOV             R1, R0
829C8:  CMP.W           R1, #0xFFFFFFFF
829CC:  BLE.W           loc_82B32
829D0:  LDR             R0, [R4]
829D2:  MOVW            R1, #0xFCA
829D6:  MOVS            R2, #0
829D8:  BLX             j_opus_encoder_ctl
829DC:  MOV             R1, R0
829DE:  CMP.W           R1, #0xFFFFFFFF
829E2:  BLE.W           loc_82B3C
829E6:  LDR             R0, [R4]
829E8:  MOVW            R1, #0xFC4
829EC:  MOVS            R2, #0x10
829EE:  BLX             j_opus_encoder_ctl
829F2:  MOV             R1, R0
829F4:  CMP.W           R1, #0xFFFFFFFF
829F8:  BLE.W           loc_82B46
829FC:  LDR             R0, [R4]
829FE:  MOVW            R1, #0xFB6
82A02:  MOVS            R2, #1
82A04:  BLX             j_opus_encoder_ctl
82A08:  MOV             R1, R0
82A0A:  CMP.W           R1, #0xFFFFFFFF
82A0E:  BLE.W           loc_82B50
82A12:  LDR             R0, [R4]
82A14:  MOV.W           R1, #0xFB0
82A18:  MOVS            R2, #0
82A1A:  BLX             j_opus_encoder_ctl
82A1E:  MOV             R1, R0
82A20:  CMP.W           R1, #0xFFFFFFFF
82A24:  BLE.W           loc_82B5A
82A28:  LDR             R0, [R4]
82A2A:  MOVW            R1, #0xFAC
82A2E:  MOVS            R2, #1
82A30:  BLX             j_opus_encoder_ctl
82A34:  MOV             R1, R0
82A36:  CMP.W           R1, #0xFFFFFFFF
82A3A:  BLE.W           loc_82B64
82A3E:  LDR             R0, [R4]
82A40:  MOVW            R1, #0xFAE
82A44:  MOVS            R2, #0xA
82A46:  BLX             j_opus_encoder_ctl
82A4A:  MOV             R1, R0
82A4C:  CMP.W           R1, #0xFFFFFFFF
82A50:  BLE.W           loc_82B6E
82A54:  LDR             R1, =(dword_116E18 - 0x82A5E)
82A56:  MOV.W           R0, #0xFFFFFFFF
82A5A:  ADD             R1, PC; dword_116E18
82A5C:  STR             R1, [SP,#0x110+var_F0]
82A5E:  STR             R0, [R1]
82A60:  BL              sub_825E4
82A64:  CMP             R0, #0
82A66:  LDR             R0, =(off_114D28 - 0x82A6C)
82A68:  ADD             R0, PC; off_114D28
82A6A:  STR             R0, [SP,#0x110+var_F4]
82A6C:  BEQ             loc_82A8C
82A6E:  BL              sub_82674
82A72:  LDRB            R1, [R0]
82A74:  LDR             R0, [R0,#4]
82A76:  LSLS            R2, R1, #0x1F
82A78:  IT EQ
82A7A:  LSREQ           R0, R1, #1
82A7C:  CMP             R0, #0
82A7E:  ITTT NE
82A80:  LDRNE           R1, [SP,#0x110+var_F8]
82A82:  LDRDNE.W        R0, R1, [R1]
82A86:  CMPNE           R1, R0
82A88:  BNE.W           loc_82CF8
82A8C:  LDR             R0, [SP,#0x110+var_F4]
82A8E:  LDR             R5, [SP,#0x110+var_F0]
82A90:  LDR             R0, [R0]
82A92:  LDR             R6, [R5]
82A94:  ADDS            R1, R6, #1
82A96:  LDR             R1, [R0]
82A98:  BEQ.W           loc_82B9E
82A9C:  LDR             R0, [SP,#0x110+var_FC]
82A9E:  LDR             R0, [R0]
82AA0:  LDR.W           R0, [R0,R6,LSL#2]
82AA4:  B               loc_82BA2
82AA6:  LDR             R0, =(aSvErrRecordIni - 0x82AAC); "[sv:err:record:init] : failed to create"... ...
82AA8:  ADD             R0, PC; "[sv:err:record:init] : failed to create"...
82AAA:  BL              sub_80664
82AAE:  MOVS            R6, #0
82AB0:  LDR             R0, [SP,#0x110+var_28]
82AB2:  CMP             R0, #0
82AB4:  BEQ.W           loc_8273E
82AB8:  LDR             R1, [R0]
82ABA:  LDR             R1, [R1,#0x18]
82ABC:  BLX             R1
82ABE:  LDR             R0, [SP,#0x110+var_28]
82AC0:  CMP             R11, R0
82AC2:  BEQ             loc_82ACE
82AC4:  CMP             R0, #0
82AC6:  BEQ.W           loc_8273E
82ACA:  MOVS            R1, #5
82ACC:  B               loc_82AD0
82ACE:  MOVS            R1, #4
82AD0:  LDR             R2, [R0]
82AD2:  LDR.W           R1, [R2,R1,LSL#2]
82AD6:  BLX             R1
82AD8:  B               loc_8273E
82ADA:  LDR             R0, =(aSvErrRecordIni_0 - 0x82AE0); "[sv:err:record:init] : failed to set bi"... ...
82ADC:  ADD             R0, PC; "[sv:err:record:init] : failed to set bi"...
82ADE:  BL              sub_80664
82AE2:  B               loc_82B76
82AE4:  DCD byte_1A49FC - 0x82732
82AE8:  DCD off_114D20 - 0x82762
82AEC:  DCD aSvDbgRecordIni - 0x82770
82AF0:  DCD dword_1A4A00 - 0x8277A
82AF4:  DCD dword_1A4A0C - 0x827AA
82AF8:  DCD off_114D24 - 0x827BE
82AFC:  DCD aNone - 0x827C6
82B00:  DCD aSvDbgRecordIni_0 - 0x827CC
82B04:  DCD dword_1A4A00 - 0x827D4
82B08:  DCD _ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_0NS_9allocatorIS3_EEFvvEEE - 0x82928
82B0C:  DCD aSvInfRecordIni - 0x82948
82B10:  DCD dword_1A4A18 - 0x82970
82B14:  DCD _ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_1NS_9allocatorIS3_EEFvvEEE - 0x82986
82B18:  DCD dword_116E18 - 0x82A5E
82B1C:  DCD off_114D28 - 0x82A6C
82B20:  DCD aSvErrRecordIni - 0x82AAC
82B24:  DCD aSvErrRecordIni_0 - 0x82AE0
82B28:  LDR             R0, =(aSvErrRecordIni_1 - 0x82B2E); "[sv:err:record:init] : failed to set au"... ...
82B2A:  ADD             R0, PC; "[sv:err:record:init] : failed to set au"...
82B2C:  BL              sub_80664
82B30:  B               loc_82B76
82B32:  LDR             R0, =(aSvErrRecordIni_2 - 0x82B38); "[sv:err:record:init] : failed to set co"... ...
82B34:  ADD             R0, PC; "[sv:err:record:init] : failed to set co"...
82B36:  BL              sub_80664
82B3A:  B               loc_82B76
82B3C:  LDR             R0, =(aSvErrRecordIni_3 - 0x82B42); "[sv:err:record:init] : failed to enable"... ...
82B3E:  ADD             R0, PC; "[sv:err:record:init] : failed to enable"...
82B40:  BL              sub_80664
82B44:  B               loc_82B76
82B46:  LDR             R0, =(aSvErrRecordIni_4 - 0x82B4C); "[sv:err:record:init] : failed to set ls"... ...
82B48:  ADD             R0, PC; "[sv:err:record:init] : failed to set ls"...
82B4A:  BL              sub_80664
82B4E:  B               loc_82B76
82B50:  LDR             R0, =(aSvErrRecordIni_5 - 0x82B56); "[sv:err:record:init] : failed to set co"... ...
82B52:  ADD             R0, PC; "[sv:err:record:init] : failed to set co"...
82B54:  BL              sub_80664
82B58:  B               loc_82B76
82B5A:  LDR             R0, =(aSvErrRecordIni_6 - 0x82B60); "[sv:err:record:init] : failed to set dt"... ...
82B5C:  ADD             R0, PC; "[sv:err:record:init] : failed to set dt"...
82B5E:  BL              sub_80664
82B62:  B               loc_82B76
82B64:  LDR             R0, =(aSvErrRecordIni_7 - 0x82B6A); "[sv:err:record:init] : failed to set in"... ...
82B66:  ADD             R0, PC; "[sv:err:record:init] : failed to set in"...
82B68:  BL              sub_80664
82B6C:  B               loc_82B76
82B6E:  LDR             R0, =(aSvErrRecordIni_8 - 0x82B74); "[sv:err:record:init] : failed to set pa"... ...
82B70:  ADD             R0, PC; "[sv:err:record:init] : failed to set pa"...
82B72:  BL              sub_80664
82B76:  MOVS            R6, #0
82B78:  LDR             R0, [SP,#0x110+var_58]
82B7A:  CMP             R0, #0
82B7C:  BEQ             loc_82AB0
82B7E:  LDR             R1, [R0]
82B80:  LDR             R1, [R1,#0x18]
82B82:  BLX             R1
82B84:  LDR             R0, [SP,#0x110+var_58]
82B86:  CMP             R10, R0
82B88:  BEQ             loc_82B92
82B8A:  CMP             R0, #0
82B8C:  BEQ             loc_82AB0
82B8E:  MOVS            R1, #5
82B90:  B               loc_82B94
82B92:  MOVS            R1, #4
82B94:  LDR             R2, [R0]
82B96:  LDR.W           R1, [R2,R1,LSL#2]
82B9A:  BLX             R1
82B9C:  B               loc_82AB0
82B9E:  MOV.W           R0, #0xFFFFFFFF
82BA2:  BLX             R1
82BA4:  LDR             R4, [SP,#0x110+var_FC]
82BA6:  MOV             R9, R0
82BA8:  LDR             R0, [R5]
82BAA:  CMP.W           R9, #0
82BAE:  IT NE
82BB0:  MOVNE.W         R9, #1
82BB4:  BNE             loc_82BDA
82BB6:  ADDS            R1, R0, #1
82BB8:  BEQ             loc_82BDA
82BBA:  LDR             R0, [SP,#0x110+var_F4]
82BBC:  LDR             R0, [R0]
82BBE:  LDR             R1, [R0]
82BC0:  MOV.W           R0, #0xFFFFFFFF
82BC4:  STR             R0, [R5]
82BC6:  MOV.W           R0, #0xFFFFFFFF
82BCA:  BLX             R1
82BCC:  MOV             R9, R0
82BCE:  LDR             R0, [R5]
82BD0:  CMP.W           R9, #0
82BD4:  IT NE
82BD6:  MOVNE.W         R9, #1
82BDA:  CMP.W           R9, #0
82BDE:  BEQ             loc_82C16
82BE0:  ADDS            R0, #1
82BE2:  BNE             loc_82C16
82BE4:  LDRD.W          R0, R1, [R4]
82BE8:  CMP             R1, R0
82BEA:  BEQ             loc_82C16
82BEC:  LDR             R1, =(off_114D2C - 0x82BF4)
82BEE:  MOVS            R4, #0
82BF0:  ADD             R1, PC; off_114D2C
82BF2:  LDR             R5, [R1]; off_1ABF34
82BF4:  LDR.W           R6, [R0,R4,LSL#2]
82BF8:  LDR             R0, [R5]
82BFA:  BLX             R0
82BFC:  CMP             R6, R0
82BFE:  BEQ             loc_82C12
82C00:  LDR             R1, [SP,#0x110+var_FC]
82C02:  ADDS            R4, #1
82C04:  LDRD.W          R0, R1, [R1]
82C08:  SUBS            R1, R1, R0
82C0A:  CMP.W           R4, R1,ASR#2
82C0E:  BCC             loc_82BF4
82C10:  B               loc_82C16
82C12:  LDR             R0, [SP,#0x110+var_F0]
82C14:  STR             R4, [R0]
82C16:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_2NS_9allocatorIS3_EEFvvEEE - 0x82C24); `vtable for'std::__function::__func<Record::Init(uint)::$_2,std::allocator<Record::Init(uint)::$_2>,void ()(void)> ...
82C18:  ADD             R4, SP, #0x110+var_B0
82C1A:  ADD.W           R8, SP, #0x110+var_98
82C1E:  STR             R4, [SP,#0x110+var_A0]
82C20:  ADD             R0, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_2,std::allocator<Record::Init(uint)::$_2>,void ()(void)>
82C22:  MOV             R1, R4
82C24:  ADDS            R0, #8
82C26:  STR             R0, [SP,#0x110+var_B0]
82C28:  MOV             R0, R8
82C2A:  BL              sub_82F58
82C2E:  LDR             R0, [SP,#0x110+var_A0]
82C30:  CMP             R4, R0
82C32:  BEQ             loc_82C3C
82C34:  LDR             R4, [SP,#0x110+var_F0]
82C36:  CBZ             R0, loc_82C48
82C38:  MOVS            R1, #5
82C3A:  B               loc_82C40
82C3C:  MOVS            R1, #4
82C3E:  LDR             R4, [SP,#0x110+var_F0]
82C40:  LDR             R2, [R0]
82C42:  LDR.W           R1, [R2,R1,LSL#2]
82C46:  BLX             R1
82C48:  CMP.W           R9, #0
82C4C:  ITT NE
82C4E:  LDRNE           R0, [R4]
82C50:  ADDSNE.W        R0, R0, #1
82C54:  BNE             loc_82C6C
82C56:  LDR             R0, =(off_114CB0 - 0x82C5C)
82C58:  ADD             R0, PC; off_114CB0
82C5A:  LDR             R0, [R0]; off_1ABF0C
82C5C:  LDR             R0, [R0]
82C5E:  BLX             R0
82C60:  MOV             R1, R0
82C62:  LDR             R0, =(aSvErrRecordIni_9 - 0x82C68); "[sv:err:record:init] : failed to init d"... ...
82C64:  ADD             R0, PC; "[sv:err:record:init] : failed to init d"...
82C66:  BL              sub_80664
82C6A:  B               loc_82CF4
82C6C:  BL              sub_825E4
82C70:  CBNZ            R0, loc_82C9A
82C72:  LDR             R0, [R4]
82C74:  LDR             R1, [SP,#0x110+var_F8]
82C76:  ADD.W           R0, R0, R0,LSL#1
82C7A:  LDR             R1, [R1]
82C7C:  ADD.W           R1, R1, R0,LSL#2
82C80:  ADD             R0, SP, #0x110+var_EC
82C82:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
82C86:  ADD             R0, SP, #0x110+var_EC
82C88:  BL              sub_826C8
82C8C:  LDRB.W          R0, [SP,#0x110+var_EC]
82C90:  LSLS            R0, R0, #0x1F
82C92:  ITT NE
82C94:  LDRNE           R0, [SP,#0x110+var_E4]; void *
82C96:  BLXNE           j__ZdlPv; operator delete(void *)
82C9A:  LDR             R0, =(off_114D30 - 0x82CA0)
82C9C:  ADD             R0, PC; off_114D30
82C9E:  LDR             R0, [R0]; off_1ABF3C
82CA0:  LDR             R6, [R0]
82CA2:  MOVS            R0, #0
82CA4:  MOVS            R1, #1
82CA6:  STR             R0, [SP,#0x110+var_110]
82CA8:  MOVW            R0, #0xBB80
82CAC:  MOV.W           R2, #0x8000
82CB0:  MOVS            R3, #0
82CB2:  BLX             R6
82CB4:  LDR             R1, =(dword_1A4A1C - 0x82CBA)
82CB6:  ADD             R1, PC; dword_1A4A1C
82CB8:  STR             R0, [R1]
82CBA:  CBZ             R0, loc_82CE0
82CBC:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN6Record4InitEjE3$_3NS_9allocatorIS3_EEFvvEEE - 0x82CCA); `vtable for'std::__function::__func<Record::Init(uint)::$_3,std::allocator<Record::Init(uint)::$_3>,void ()(void)> ...
82CBE:  ADD             R4, SP, #0x110+var_E0
82CC0:  ADD.W           R9, SP, #0x110+var_C8
82CC4:  STR             R4, [SP,#0x110+var_D0]
82CC6:  ADD             R0, PC; `vtable for'std::__function::__func<Record::Init(uint)::$_3,std::allocator<Record::Init(uint)::$_3>,void ()(void)>
82CC8:  MOV             R1, R4
82CCA:  ADDS            R0, #8
82CCC:  STR             R0, [SP,#0x110+var_E0]
82CCE:  MOV             R0, R9
82CD0:  BL              sub_82F58
82CD4:  LDR             R0, [SP,#0x110+var_D0]
82CD6:  CMP             R4, R0
82CD8:  BEQ             loc_82D30
82CDA:  CBZ             R0, loc_82D3A
82CDC:  MOVS            R1, #5
82CDE:  B               loc_82D32
82CE0:  LDR             R0, =(off_114CB0 - 0x82CE6)
82CE2:  ADD             R0, PC; off_114CB0
82CE4:  LDR             R0, [R0]; off_1ABF0C
82CE6:  LDR             R0, [R0]
82CE8:  BLX             R0
82CEA:  MOV             R1, R0
82CEC:  LDR             R0, =(aSvErrRecordIni_10 - 0x82CF2); "[sv:err:record:init] : failed to create"... ...
82CEE:  ADD             R0, PC; "[sv:err:record:init] : failed to create"...
82CF0:  BL              sub_80664
82CF4:  MOVS            R6, #0
82CF6:  B               loc_82E24
82CF8:  MOVW            R8, #0xAAAB
82CFC:  MOVS            R5, #0
82CFE:  MOVT            R8, #0xAAAA
82D02:  MOVS            R6, #0
82D04:  ADDS            R4, R0, R5
82D06:  BL              sub_82674
82D0A:  MOV             R1, R0
82D0C:  MOV             R0, R4
82D0E:  BL              sub_82FAC
82D12:  CMP             R0, #0
82D14:  BNE.W           loc_82E2C
82D18:  LDR             R1, [SP,#0x110+var_F8]
82D1A:  ADDS            R5, #0xC
82D1C:  ADDS            R6, #1
82D1E:  LDRD.W          R0, R1, [R1]
82D22:  SUBS            R1, R1, R0
82D24:  ASRS            R1, R1, #2
82D26:  MUL.W           R1, R1, R8
82D2A:  CMP             R6, R1
82D2C:  BCC             loc_82D04
82D2E:  B               loc_82A8C
82D30:  MOVS            R1, #4
82D32:  LDR             R2, [R0]
82D34:  LDR.W           R1, [R2,R1,LSL#2]
82D38:  BLX             R1
82D3A:  LDR             R0, =(off_114CAC - 0x82D40)
82D3C:  ADD             R0, PC; off_114CAC
82D3E:  LDR             R0, [R0]; off_1ABEF0
82D40:  LDR             R6, [R0]
82D42:  MOVS            R0, #0
82D44:  MOVS            R1, #1
82D46:  STR             R0, [SP,#0x110+var_110]
82D48:  MOVW            R0, #0xBB80
82D4C:  MOVS            R2, #0
82D4E:  MOV.W           R3, #0xFFFFFFFF
82D52:  BLX             R6
82D54:  MOV             R6, R0
82D56:  LDR             R0, =(dword_1A4A20 - 0x82D5C)
82D58:  ADD             R0, PC; dword_1A4A20
82D5A:  STR             R6, [R0]
82D5C:  CBZ             R6, loc_82D98
82D5E:  LDR             R0, =(off_114D34 - 0x82D64)
82D60:  ADD             R0, PC; off_114D34
82D62:  LDR             R0, [R0]; off_1ABF40
82D64:  LDR             R3, [R0]
82D66:  MOV             R0, R6
82D68:  MOVS            R1, #2
82D6A:  MOV.W           R2, #0x40800000
82D6E:  BLX             R3
82D70:  BL              sub_825E4
82D74:  CBNZ            R0, loc_82D88
82D76:  MOVS            R0, #1
82D78:  BL              sub_82614
82D7C:  MOVS            R0, #1
82D7E:  BL              sub_826B0
82D82:  MOVS            R0, #0x4B ; 'K'
82D84:  BL              sub_826BC
82D88:  LDR             R0, [SP,#0x110+var_28]
82D8A:  MOVS            R1, #0
82D8C:  STR             R1, [SP,#0x110+var_28]
82D8E:  CMP             R11, R0
82D90:  BEQ             loc_82DAE
82D92:  CBZ             R0, loc_82DB8
82D94:  MOVS            R1, #5
82D96:  B               loc_82DB0
82D98:  LDR             R0, =(off_114CB0 - 0x82D9E)
82D9A:  ADD             R0, PC; off_114CB0
82D9C:  LDR             R0, [R0]; off_1ABF0C
82D9E:  LDR             R0, [R0]
82DA0:  BLX             R0
82DA2:  MOV             R1, R0
82DA4:  LDR             R0, =(aSvErrRecordIni_11 - 0x82DAA); "[sv:err:record:init] : failed to create"... ...
82DA6:  ADD             R0, PC; "[sv:err:record:init] : failed to create"...
82DA8:  BL              sub_80664
82DAC:  B               loc_82E18
82DAE:  MOVS            R1, #4
82DB0:  LDR             R2, [R0]
82DB2:  LDR.W           R1, [R2,R1,LSL#2]
82DB6:  BLX             R1
82DB8:  LDR             R0, [SP,#0x110+var_58]
82DBA:  MOVS            R1, #0
82DBC:  STR             R1, [SP,#0x110+var_58]
82DBE:  CMP             R10, R0
82DC0:  BEQ             loc_82DC8
82DC2:  CBZ             R0, loc_82DD2
82DC4:  MOVS            R1, #5
82DC6:  B               loc_82DCA
82DC8:  MOVS            R1, #4
82DCA:  LDR             R2, [R0]
82DCC:  LDR.W           R1, [R2,R1,LSL#2]
82DD0:  BLX             R1
82DD2:  LDR             R0, [SP,#0x110+var_88]
82DD4:  MOVS            R1, #0
82DD6:  STR             R1, [SP,#0x110+var_88]
82DD8:  CMP             R8, R0
82DDA:  BEQ             loc_82DE2
82DDC:  CBZ             R0, loc_82DEC
82DDE:  MOVS            R1, #5
82DE0:  B               loc_82DE4
82DE2:  MOVS            R1, #4
82DE4:  LDR             R2, [R0]
82DE6:  LDR.W           R1, [R2,R1,LSL#2]
82DEA:  BLX             R1
82DEC:  LDR             R0, [SP,#0x110+var_B8]
82DEE:  MOVS            R1, #0
82DF0:  STR             R1, [SP,#0x110+var_B8]
82DF2:  CMP             R9, R0
82DF4:  BEQ             loc_82DFC
82DF6:  CBZ             R0, loc_82E06
82DF8:  MOVS            R1, #5
82DFA:  B               loc_82DFE
82DFC:  MOVS            R1, #4
82DFE:  LDR             R2, [R0]
82E00:  LDR.W           R1, [R2,R1,LSL#2]
82E04:  BLX             R1
82E06:  LDR             R0, =(aSvDbgRecordIni_1 - 0x82E0C); "[sv:dbg:record:init] : module initializ"... ...
82E08:  ADD             R0, PC; "[sv:dbg:record:init] : module initializ"...
82E0A:  BL              sub_80664
82E0E:  LDR             R1, [SP,#0x110+var_104]
82E10:  MOVS            R0, #1
82E12:  STRB            R0, [R1]
82E14:  BL              sub_8303C
82E18:  ADD             R0, SP, #0x110+var_C8
82E1A:  BL              sub_830E8
82E1E:  CMP             R6, #0
82E20:  IT NE
82E22:  MOVNE           R6, #1
82E24:  ADD             R0, SP, #0x110+var_98
82E26:  BL              sub_830E8
82E2A:  B               loc_82B78
82E2C:  LDR             R0, [SP,#0x110+var_F4]
82E2E:  LDR             R5, [SP,#0x110+var_F0]
82E30:  LDR             R0, [R0]
82E32:  STR             R6, [R5]
82E34:  LDR             R1, [R0]
82E36:  B               loc_82A9C
82E38:  LDR             R0, =(dword_1A4A0C - 0x82E3E)
82E3A:  ADD             R0, PC; dword_1A4A0C
82E3C:  BLX             j__ZNKSt6__ndk120__vector_base_commonILb1EE20__throw_length_errorEv; std::__vector_base_common<true>::__throw_length_error(void)
82E40:  MOV             R0, R9
82E42:  BLX             j__ZNKSt6__ndk121__basic_string_commonILb1EE20__throw_length_errorEv; std::__basic_string_common<true>::__throw_length_error(void)
82E46:  LDR             R0, =(aAllocatorTAllo - 0x82E4C); "allocator<T>::allocate(size_t n) 'n' ex"... ...
82E48:  ADD             R0, PC; "allocator<T>::allocate(size_t n) 'n' ex"...
82E4A:  BL              sub_7B270
