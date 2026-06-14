; =========================================================
; Game Engine Function: sub_1A2840
; Address            : 0x1A2840 - 0x1A2CC8
; =========================================================

1A2840:  PUSH            {R4,R6,R7,LR}
1A2842:  ADD             R7, SP, #8
1A2844:  LDR.W           R0, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x1A2856)
1A2848:  ADR.W           R3, dword_1A2CD0
1A284C:  VLD1.64         {D16-D17}, [R3@128]
1A2850:  MOVS            R4, #0
1A2852:  ADD             R0, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
1A2854:  LDR.W           R2, =(unk_67A000 - 0x1A2862)
1A2858:  LDR             R1, [R0]; CTouchInterface::m_WidgetPosition ...
1A285A:  LDR.W           R0, =(nullsub_25+1 - 0x1A2868)
1A285E:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A2860:  ADD.W           R3, R1, #0x70 ; 'p'
1A2864:  ADD             R0, PC; nullsub_25 ; lpfunc
1A2866:  VST1.32         {D16-D17}, [R3]
1A286A:  ADD.W           R3, R1, #0x60 ; '`'
1A286E:  VST1.32         {D16-D17}, [R3]
1A2872:  ADD.W           R3, R1, #0x50 ; 'P'
1A2876:  VST1.32         {D16-D17}, [R3]
1A287A:  ADD.W           R3, R1, #0x40 ; '@'
1A287E:  VST1.32         {D16-D17}, [R3]
1A2882:  ADD.W           R3, R1, #0x30 ; '0'
1A2886:  VST1.32         {D16-D17}, [R3]
1A288A:  ADD.W           R3, R1, #0x20 ; ' '
1A288E:  VST1.32         {D16-D17}, [R3]
1A2892:  MOV             R3, R1
1A2894:  VST1.32         {D16-D17}, [R3]!
1A2898:  VST1.32         {D16-D17}, [R3]
1A289C:  ADD.W           R3, R1, #0xB0
1A28A0:  VST1.32         {D16-D17}, [R3]
1A28A4:  ADD.W           R3, R1, #0xA0
1A28A8:  VST1.32         {D16-D17}, [R3]
1A28AC:  ADD.W           R3, R1, #0x90
1A28B0:  VST1.32         {D16-D17}, [R3]
1A28B4:  ADD.W           R3, R1, #0x80
1A28B8:  VST1.32         {D16-D17}, [R3]
1A28BC:  ADD.W           R3, R1, #0xF0
1A28C0:  VST1.32         {D16-D17}, [R3]
1A28C4:  ADD.W           R3, R1, #0xE0
1A28C8:  VST1.32         {D16-D17}, [R3]
1A28CC:  ADD.W           R3, R1, #0xD0
1A28D0:  VST1.32         {D16-D17}, [R3]
1A28D4:  ADD.W           R3, R1, #0xC0
1A28D8:  VST1.32         {D16-D17}, [R3]
1A28DC:  ADD.W           R3, R1, #0x130
1A28E0:  VST1.32         {D16-D17}, [R3]
1A28E4:  ADD.W           R3, R1, #0x120
1A28E8:  VST1.32         {D16-D17}, [R3]
1A28EC:  ADD.W           R3, R1, #0x110
1A28F0:  VST1.32         {D16-D17}, [R3]
1A28F4:  ADD.W           R3, R1, #0x100
1A28F8:  VST1.32         {D16-D17}, [R3]
1A28FC:  ADD.W           R3, R1, #0x170
1A2900:  VST1.32         {D16-D17}, [R3]
1A2904:  ADD.W           R3, R1, #0x160
1A2908:  VST1.32         {D16-D17}, [R3]
1A290C:  ADD.W           R3, R1, #0x150
1A2910:  VST1.32         {D16-D17}, [R3]
1A2914:  ADD.W           R3, R1, #0x140
1A2918:  VST1.32         {D16-D17}, [R3]
1A291C:  ADD.W           R3, R1, #0x1B0
1A2920:  VST1.32         {D16-D17}, [R3]
1A2924:  ADD.W           R3, R1, #0x1A0
1A2928:  VST1.32         {D16-D17}, [R3]
1A292C:  ADD.W           R3, R1, #0x190
1A2930:  VST1.32         {D16-D17}, [R3]
1A2934:  ADD.W           R3, R1, #0x180
1A2938:  VST1.32         {D16-D17}, [R3]
1A293C:  ADD.W           R3, R1, #0x1F0
1A2940:  VST1.32         {D16-D17}, [R3]
1A2944:  ADD.W           R3, R1, #0x1E0
1A2948:  VST1.32         {D16-D17}, [R3]
1A294C:  ADD.W           R3, R1, #0x1D0
1A2950:  VST1.32         {D16-D17}, [R3]
1A2954:  ADD.W           R3, R1, #0x1C0
1A2958:  VST1.32         {D16-D17}, [R3]
1A295C:  ADD.W           R3, R1, #0x230
1A2960:  VST1.32         {D16-D17}, [R3]
1A2964:  ADD.W           R3, R1, #0x220
1A2968:  VST1.32         {D16-D17}, [R3]
1A296C:  ADD.W           R3, R1, #0x210
1A2970:  VST1.32         {D16-D17}, [R3]
1A2974:  ADD.W           R3, R1, #0x200
1A2978:  VST1.32         {D16-D17}, [R3]
1A297C:  ADD.W           R3, R1, #0x270
1A2980:  VST1.32         {D16-D17}, [R3]
1A2984:  ADD.W           R3, R1, #0x260
1A2988:  VST1.32         {D16-D17}, [R3]
1A298C:  ADD.W           R3, R1, #0x250
1A2990:  VST1.32         {D16-D17}, [R3]
1A2994:  ADD.W           R3, R1, #0x240
1A2998:  VST1.32         {D16-D17}, [R3]
1A299C:  ADD.W           R3, R1, #0x2B0
1A29A0:  VST1.32         {D16-D17}, [R3]
1A29A4:  ADD.W           R3, R1, #0x2A0
1A29A8:  VST1.32         {D16-D17}, [R3]
1A29AC:  ADD.W           R3, R1, #0x290
1A29B0:  VST1.32         {D16-D17}, [R3]
1A29B4:  ADD.W           R3, R1, #0x280
1A29B8:  VST1.32         {D16-D17}, [R3]
1A29BC:  ADD.W           R3, R1, #0x2F0
1A29C0:  VST1.32         {D16-D17}, [R3]
1A29C4:  ADD.W           R3, R1, #0x2E0
1A29C8:  VST1.32         {D16-D17}, [R3]
1A29CC:  ADD.W           R3, R1, #0x2D0
1A29D0:  VST1.32         {D16-D17}, [R3]
1A29D4:  ADD.W           R3, R1, #0x2C0
1A29D8:  VST1.32         {D16-D17}, [R3]
1A29DC:  ADD.W           R3, R1, #0x330
1A29E0:  VST1.32         {D16-D17}, [R3]
1A29E4:  ADD.W           R3, R1, #0x320
1A29E8:  VST1.32         {D16-D17}, [R3]
1A29EC:  ADD.W           R3, R1, #0x310
1A29F0:  VST1.32         {D16-D17}, [R3]
1A29F4:  ADD.W           R3, R1, #0x300
1A29F8:  VST1.32         {D16-D17}, [R3]
1A29FC:  ADD.W           R3, R1, #0x370
1A2A00:  VST1.32         {D16-D17}, [R3]
1A2A04:  ADD.W           R3, R1, #0x360
1A2A08:  VST1.32         {D16-D17}, [R3]
1A2A0C:  ADD.W           R3, R1, #0x350
1A2A10:  VST1.32         {D16-D17}, [R3]
1A2A14:  ADD.W           R3, R1, #0x340
1A2A18:  VST1.32         {D16-D17}, [R3]
1A2A1C:  ADD.W           R3, R1, #0x3B0
1A2A20:  VST1.32         {D16-D17}, [R3]
1A2A24:  ADD.W           R3, R1, #0x3A0
1A2A28:  VST1.32         {D16-D17}, [R3]
1A2A2C:  ADD.W           R3, R1, #0x390
1A2A30:  VST1.32         {D16-D17}, [R3]
1A2A34:  ADD.W           R3, R1, #0x380
1A2A38:  VST1.32         {D16-D17}, [R3]
1A2A3C:  ADD.W           R3, R1, #0x3F0
1A2A40:  VST1.32         {D16-D17}, [R3]
1A2A44:  ADD.W           R3, R1, #0x3E0
1A2A48:  VST1.32         {D16-D17}, [R3]
1A2A4C:  ADD.W           R3, R1, #0x3D0
1A2A50:  VST1.32         {D16-D17}, [R3]
1A2A54:  ADD.W           R3, R1, #0x3C0
1A2A58:  VST1.32         {D16-D17}, [R3]
1A2A5C:  ADD.W           R3, R1, #0x430
1A2A60:  VST1.32         {D16-D17}, [R3]
1A2A64:  ADD.W           R3, R1, #0x420
1A2A68:  VST1.32         {D16-D17}, [R3]
1A2A6C:  ADD.W           R3, R1, #0x410
1A2A70:  VST1.32         {D16-D17}, [R3]
1A2A74:  ADD.W           R3, R1, #0x400
1A2A78:  VST1.32         {D16-D17}, [R3]
1A2A7C:  ADD.W           R3, R1, #0x470
1A2A80:  VST1.32         {D16-D17}, [R3]
1A2A84:  ADD.W           R3, R1, #0x460
1A2A88:  VST1.32         {D16-D17}, [R3]
1A2A8C:  ADD.W           R3, R1, #0x450
1A2A90:  VST1.32         {D16-D17}, [R3]
1A2A94:  ADD.W           R3, R1, #0x440
1A2A98:  VST1.32         {D16-D17}, [R3]
1A2A9C:  ADD.W           R3, R1, #0x4B0
1A2AA0:  VST1.32         {D16-D17}, [R3]
1A2AA4:  ADD.W           R3, R1, #0x4A0
1A2AA8:  VST1.32         {D16-D17}, [R3]
1A2AAC:  ADD.W           R3, R1, #0x490
1A2AB0:  VST1.32         {D16-D17}, [R3]
1A2AB4:  ADD.W           R3, R1, #0x480
1A2AB8:  VST1.32         {D16-D17}, [R3]
1A2ABC:  ADD.W           R3, R1, #0x530
1A2AC0:  VST1.32         {D16-D17}, [R3]
1A2AC4:  ADD.W           R3, R1, #0x520
1A2AC8:  VST1.32         {D16-D17}, [R3]
1A2ACC:  ADD.W           R3, R1, #0x510
1A2AD0:  VST1.32         {D16-D17}, [R3]
1A2AD4:  ADD.W           R3, R1, #0x500
1A2AD8:  VST1.32         {D16-D17}, [R3]
1A2ADC:  ADD.W           R3, R1, #0x4F0
1A2AE0:  VST1.32         {D16-D17}, [R3]
1A2AE4:  ADD.W           R3, R1, #0x4E0
1A2AE8:  VST1.32         {D16-D17}, [R3]
1A2AEC:  ADD.W           R3, R1, #0x4D0
1A2AF0:  VST1.32         {D16-D17}, [R3]
1A2AF4:  ADD.W           R3, R1, #0x4C0
1A2AF8:  VST1.32         {D16-D17}, [R3]
1A2AFC:  ADD.W           R3, R1, #0x570
1A2B00:  VST1.32         {D16-D17}, [R3]
1A2B04:  ADD.W           R3, R1, #0x560
1A2B08:  VST1.32         {D16-D17}, [R3]
1A2B0C:  ADD.W           R3, R1, #0x550
1A2B10:  VST1.32         {D16-D17}, [R3]
1A2B14:  ADD.W           R3, R1, #0x540
1A2B18:  VST1.32         {D16-D17}, [R3]
1A2B1C:  ADD.W           R3, R1, #0x5B0
1A2B20:  VST1.32         {D16-D17}, [R3]
1A2B24:  ADD.W           R3, R1, #0x5A0
1A2B28:  VST1.32         {D16-D17}, [R3]
1A2B2C:  ADD.W           R3, R1, #0x590
1A2B30:  VST1.32         {D16-D17}, [R3]
1A2B34:  ADD.W           R3, R1, #0x580
1A2B38:  VST1.32         {D16-D17}, [R3]
1A2B3C:  ADD.W           R3, R1, #0x5F0
1A2B40:  VST1.32         {D16-D17}, [R3]
1A2B44:  ADD.W           R3, R1, #0x5E0
1A2B48:  VST1.32         {D16-D17}, [R3]
1A2B4C:  ADD.W           R3, R1, #0x5D0
1A2B50:  VST1.32         {D16-D17}, [R3]
1A2B54:  ADD.W           R3, R1, #0x5C0
1A2B58:  VST1.32         {D16-D17}, [R3]
1A2B5C:  ADD.W           R3, R1, #0x630
1A2B60:  VST1.32         {D16-D17}, [R3]
1A2B64:  ADD.W           R3, R1, #0x620
1A2B68:  VST1.32         {D16-D17}, [R3]
1A2B6C:  ADD.W           R3, R1, #0x610
1A2B70:  VST1.32         {D16-D17}, [R3]
1A2B74:  ADD.W           R3, R1, #0x600
1A2B78:  VST1.32         {D16-D17}, [R3]
1A2B7C:  ADD.W           R3, R1, #0x670
1A2B80:  VST1.32         {D16-D17}, [R3]
1A2B84:  ADD.W           R3, R1, #0x660
1A2B88:  VST1.32         {D16-D17}, [R3]
1A2B8C:  ADD.W           R3, R1, #0x650
1A2B90:  VST1.32         {D16-D17}, [R3]
1A2B94:  ADD.W           R3, R1, #0x640
1A2B98:  VST1.32         {D16-D17}, [R3]
1A2B9C:  ADD.W           R3, R1, #0x6B0
1A2BA0:  VST1.32         {D16-D17}, [R3]
1A2BA4:  ADD.W           R3, R1, #0x6A0
1A2BA8:  VST1.32         {D16-D17}, [R3]
1A2BAC:  ADD.W           R3, R1, #0x690
1A2BB0:  VST1.32         {D16-D17}, [R3]
1A2BB4:  ADD.W           R3, R1, #0x680
1A2BB8:  VST1.32         {D16-D17}, [R3]
1A2BBC:  ADD.W           R3, R1, #0x6F0
1A2BC0:  VST1.32         {D16-D17}, [R3]
1A2BC4:  ADD.W           R3, R1, #0x6E0
1A2BC8:  VST1.32         {D16-D17}, [R3]
1A2BCC:  ADD.W           R3, R1, #0x6D0
1A2BD0:  VST1.32         {D16-D17}, [R3]
1A2BD4:  ADD.W           R3, R1, #0x6C0
1A2BD8:  VST1.32         {D16-D17}, [R3]
1A2BDC:  ADD.W           R3, R1, #0x730
1A2BE0:  VST1.32         {D16-D17}, [R3]
1A2BE4:  ADD.W           R3, R1, #0x720
1A2BE8:  VST1.32         {D16-D17}, [R3]
1A2BEC:  ADD.W           R3, R1, #0x710
1A2BF0:  VST1.32         {D16-D17}, [R3]
1A2BF4:  ADD.W           R3, R1, #0x700
1A2BF8:  VST1.32         {D16-D17}, [R3]
1A2BFC:  ADD.W           R3, R1, #0x770
1A2C00:  VST1.32         {D16-D17}, [R3]
1A2C04:  ADD.W           R3, R1, #0x760
1A2C08:  VST1.32         {D16-D17}, [R3]
1A2C0C:  ADD.W           R3, R1, #0x750
1A2C10:  VST1.32         {D16-D17}, [R3]
1A2C14:  ADD.W           R3, R1, #0x740
1A2C18:  VST1.32         {D16-D17}, [R3]
1A2C1C:  ADD.W           R3, R1, #0x7B0
1A2C20:  VST1.32         {D16-D17}, [R3]
1A2C24:  ADD.W           R3, R1, #0x7A0
1A2C28:  VST1.32         {D16-D17}, [R3]
1A2C2C:  ADD.W           R3, R1, #0x790
1A2C30:  VST1.32         {D16-D17}, [R3]
1A2C34:  ADD.W           R3, R1, #0x780
1A2C38:  VST1.32         {D16-D17}, [R3]
1A2C3C:  ADD.W           R3, R1, #0x7F0
1A2C40:  VST1.32         {D16-D17}, [R3]
1A2C44:  ADD.W           R3, R1, #0x7E0
1A2C48:  VST1.32         {D16-D17}, [R3]
1A2C4C:  ADD.W           R3, R1, #0x7D0
1A2C50:  VST1.32         {D16-D17}, [R3]
1A2C54:  ADD.W           R3, R1, #0x7C0
1A2C58:  VST1.32         {D16-D17}, [R3]
1A2C5C:  ADD.W           R3, R1, #0x830
1A2C60:  VST1.32         {D16-D17}, [R3]
1A2C64:  ADD.W           R3, R1, #0x820
1A2C68:  VST1.32         {D16-D17}, [R3]
1A2C6C:  ADD.W           R3, R1, #0x810
1A2C70:  VST1.32         {D16-D17}, [R3]
1A2C74:  ADD.W           R3, R1, #0x800
1A2C78:  VST1.32         {D16-D17}, [R3]
1A2C7C:  ADD.W           R3, R1, #0x870
1A2C80:  VST1.32         {D16-D17}, [R3]
1A2C84:  ADD.W           R3, R1, #0x860
1A2C88:  VST1.32         {D16-D17}, [R3]
1A2C8C:  ADD.W           R3, R1, #0x850
1A2C90:  VST1.32         {D16-D17}, [R3]
1A2C94:  ADD.W           R3, R1, #0x840
1A2C98:  VST1.32         {D16-D17}, [R3]
1A2C9C:  ADD.W           R3, R1, #0x880
1A2CA0:  ADD.W           R1, R1, #0x890
1A2CA4:  VST1.32         {D16-D17}, [R3]
1A2CA8:  VST1.32         {D16-D17}, [R1]
1A2CAC:  MOVS            R1, #0; obj
1A2CAE:  BLX             __cxa_atexit
1A2CB2:  LDR             R0, =(_ZN15CTouchInterface14m_vecCachedPosE_ptr - 0x1A2CBA)
1A2CB4:  LDR             R1, =(_ZN15CTouchInterface16m_vecCachedDeltaE_ptr - 0x1A2CBC)
1A2CB6:  ADD             R0, PC; _ZN15CTouchInterface14m_vecCachedPosE_ptr
1A2CB8:  ADD             R1, PC; _ZN15CTouchInterface16m_vecCachedDeltaE_ptr
1A2CBA:  LDR             R0, [R0]; CTouchInterface::m_vecCachedPos ...
1A2CBC:  LDR             R1, [R1]; CTouchInterface::m_vecCachedDelta ...
1A2CBE:  STRD.W          R4, R4, [R0]; CTouchInterface::m_vecCachedPos
1A2CC2:  STRD.W          R4, R4, [R1]; CTouchInterface::m_vecCachedDelta
1A2CC6:  POP             {R4,R6,R7,PC}
