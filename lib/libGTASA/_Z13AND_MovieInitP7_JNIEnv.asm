; =========================================================
; Game Engine Function: _Z13AND_MovieInitP7_JNIEnv
; Address            : 0x27A618 - 0x27AB4E
; =========================================================

27A618:  PUSH            {R4-R7,LR}
27A61A:  ADD             R7, SP, #0xC
27A61C:  PUSH.W          {R8-R11}
27A620:  SUB             SP, SP, #4
27A622:  MOV             R4, R0
27A624:  LDR.W           R1, =(aComWardrumstud_1 - 0x27A62E); "com/wardrumstudios/utils/WarMedia"
27A628:  LDR             R0, [R4]
27A62A:  ADD             R1, PC; "com/wardrumstudios/utils/WarMedia"
27A62C:  LDR             R2, [R0,#0x18]
27A62E:  MOV             R0, R4
27A630:  BLX             R2
27A632:  MOV             R5, R0
27A634:  LDR             R0, [R4]
27A636:  LDR.W           R2, =(aPlaymovie - 0x27A648); "PlayMovie"
27A63A:  MOV             R1, R5
27A63C:  LDR.W           R3, =(aLjavaLangStrin_4 - 0x27A64A); "(Ljava/lang/String;F)V"
27A640:  LDR.W           R6, [R0,#0x84]
27A644:  ADD             R2, PC; "PlayMovie"
27A646:  ADD             R3, PC; "(Ljava/lang/String;F)V"
27A648:  MOV             R0, R4
27A64A:  BLX             R6
27A64C:  LDR.W           R1, =(s_PlayMovie_ptr - 0x27A658)
27A650:  LDR.W           R2, =(aPlaymovieinfil - 0x27A65E); "PlayMovieInFile"
27A654:  ADD             R1, PC; s_PlayMovie_ptr
27A656:  LDR.W           R3, =(aLjavaLangStrin_5 - 0x27A662); "(Ljava/lang/String;FII)V"
27A65A:  ADD             R2, PC; "PlayMovieInFile"
27A65C:  LDR             R1, [R1]; s_PlayMovie
27A65E:  ADD             R3, PC; "(Ljava/lang/String;FII)V"
27A660:  STR             R0, [R1]
27A662:  MOV             R1, R5
27A664:  LDR             R0, [R4]
27A666:  LDR.W           R6, [R0,#0x84]
27A66A:  MOV             R0, R4
27A66C:  BLX             R6
27A66E:  LDR.W           R1, =(s_PlayMovieInFile_ptr - 0x27A67A)
27A672:  LDR.W           R2, =(aPlaymovieinwin - 0x27A680); "PlayMovieInWindow"
27A676:  ADD             R1, PC; s_PlayMovieInFile_ptr
27A678:  LDR.W           R3, =(aLjavaLangStrin_6 - 0x27A684); "(Ljava/lang/String;IIIIFIIIZ)V"
27A67C:  ADD             R2, PC; "PlayMovieInWindow"
27A67E:  LDR             R1, [R1]; s_PlayMovieInFile
27A680:  ADD             R3, PC; "(Ljava/lang/String;IIIIFIIIZ)V"
27A682:  STR             R0, [R1]
27A684:  MOV             R1, R5
27A686:  LDR             R0, [R4]
27A688:  LDR.W           R6, [R0,#0x84]
27A68C:  MOV             R0, R4
27A68E:  BLX             R6
27A690:  LDR.W           R1, =(s_PlayMovieInWindow_ptr - 0x27A69C)
27A694:  LDR.W           R10, =(aV - 0x27A6A2); "()V"
27A698:  ADD             R1, PC; s_PlayMovieInWindow_ptr
27A69A:  LDR.W           R2, =(aStopmovie - 0x27A6A6); "StopMovie"
27A69E:  ADD             R10, PC; "()V"
27A6A0:  LDR             R1, [R1]; s_PlayMovieInWindow
27A6A2:  ADD             R2, PC; "StopMovie"
27A6A4:  MOV             R3, R10
27A6A6:  STR             R0, [R1]
27A6A8:  MOV             R1, R5
27A6AA:  LDR             R0, [R4]
27A6AC:  LDR.W           R6, [R0,#0x84]
27A6B0:  MOV             R0, R4
27A6B2:  BLX             R6
27A6B4:  LDR.W           R1, =(s_StopMovie_ptr - 0x27A6C0)
27A6B8:  LDR.W           R2, =(aMoviesetskippa - 0x27A6C6); "MovieSetSkippable"
27A6BC:  ADD             R1, PC; s_StopMovie_ptr
27A6BE:  LDR.W           R3, =(aZV - 0x27A6CA); "(Z)V"
27A6C2:  ADD             R2, PC; "MovieSetSkippable"
27A6C4:  LDR             R1, [R1]; s_StopMovie
27A6C6:  ADD             R3, PC; "(Z)V"
27A6C8:  STR             R0, [R1]
27A6CA:  MOV             R1, R5
27A6CC:  LDR             R0, [R4]
27A6CE:  LDR.W           R6, [R0,#0x84]
27A6D2:  MOV             R0, R4
27A6D4:  BLX             R6
27A6D6:  LDR.W           R1, =(s_MovieIsSkippable_ptr - 0x27A6E6)
27A6DA:  ADR.W           R9, dword_27AB94
27A6DE:  LDR.W           R2, =(aIsmovieplaying - 0x27A6EA); "IsMoviePlaying"
27A6E2:  ADD             R1, PC; s_MovieIsSkippable_ptr
27A6E4:  MOV             R3, R9
27A6E6:  ADD             R2, PC; "IsMoviePlaying"
27A6E8:  LDR             R1, [R1]; s_MovieIsSkippable
27A6EA:  STR             R0, [R1]
27A6EC:  MOV             R1, R5
27A6EE:  LDR             R0, [R4]
27A6F0:  LDR.W           R6, [R0,#0x84]
27A6F4:  MOV             R0, R4
27A6F6:  BLX             R6
27A6F8:  LDR.W           R1, =(s_IsMoviePlaying_ptr - 0x27A704)
27A6FC:  LDR.W           R11, =(aLjavaLangStrin_0 - 0x27A70A); "(Ljava/lang/String;)Z"
27A700:  ADD             R1, PC; s_IsMoviePlaying_ptr
27A702:  LDR.W           R2, =(aDeletefile - 0x27A70E); "DeleteFile"
27A706:  ADD             R11, PC; "(Ljava/lang/String;)Z"
27A708:  LDR             R1, [R1]; s_IsMoviePlaying
27A70A:  ADD             R2, PC; "DeleteFile"
27A70C:  MOV             R3, R11
27A70E:  STR             R0, [R1]
27A710:  MOV             R1, R5
27A712:  LDR             R0, [R4]
27A714:  LDR.W           R6, [R0,#0x84]
27A718:  MOV             R0, R4
27A71A:  BLX             R6
27A71C:  LDR.W           R1, =(s_DeleteFile_ptr - 0x27A728)
27A720:  LDR.W           R2, =(aFilerename - 0x27A72E); "FileRename"
27A724:  ADD             R1, PC; s_DeleteFile_ptr
27A726:  LDR.W           R3, =(aLjavaLangStrin_7 - 0x27A732); "(Ljava/lang/String;Ljava/lang/String;I)"...
27A72A:  ADD             R2, PC; "FileRename"
27A72C:  LDR             R1, [R1]; s_DeleteFile
27A72E:  ADD             R3, PC; "(Ljava/lang/String;Ljava/lang/String;I)"...
27A730:  STR             R0, [R1]
27A732:  MOV             R1, R5
27A734:  LDR             R0, [R4]
27A736:  LDR.W           R6, [R0,#0x84]
27A73A:  MOV             R0, R4
27A73C:  BLX             R6
27A73E:  LDR.W           R1, =(s_FileRename_ptr - 0x27A74C)
27A742:  MOV             R3, R9
27A744:  LDR.W           R2, =(aGetdevicelocal - 0x27A74E); "GetDeviceLocale"
27A748:  ADD             R1, PC; s_FileRename_ptr
27A74A:  ADD             R2, PC; "GetDeviceLocale"
27A74C:  LDR             R1, [R1]; s_FileRename
27A74E:  STR             R0, [R1]
27A750:  MOV             R1, R5
27A752:  LDR             R0, [R4]
27A754:  LDR.W           R6, [R0,#0x84]
27A758:  MOV             R0, R4
27A75A:  BLX             R6
27A75C:  LDR.W           R1, =(s_GetDeviceLocale_ptr - 0x27A76A)
27A760:  MOV             R3, R9
27A762:  LDR.W           R2, =(aGetdevicetype - 0x27A76C); "GetDeviceType"
27A766:  ADD             R1, PC; s_GetDeviceLocale_ptr
27A768:  ADD             R2, PC; "GetDeviceType"
27A76A:  LDR             R1, [R1]; s_GetDeviceLocale
27A76C:  STR             R0, [R1]
27A76E:  MOV             R1, R5
27A770:  LDR             R0, [R4]
27A772:  LDR.W           R6, [R0,#0x84]
27A776:  MOV             R0, R4
27A778:  BLX             R6
27A77A:  LDR.W           R1, =(s_GetDeviceType_ptr - 0x27A786)
27A77E:  LDR.W           R2, =(aGetdeviceinfo - 0x27A78C); "GetDeviceInfo"
27A782:  ADD             R1, PC; s_GetDeviceType_ptr
27A784:  LDR.W           R3, =(aII - 0x27A790); "(I)I"
27A788:  ADD             R2, PC; "GetDeviceInfo"
27A78A:  LDR             R1, [R1]; s_GetDeviceType
27A78C:  ADD             R3, PC; "(I)I"
27A78E:  STR             R0, [R1]
27A790:  MOV             R1, R5
27A792:  LDR             R0, [R4]
27A794:  LDR.W           R6, [R0,#0x84]
27A798:  MOV             R0, R4
27A79A:  BLX             R6
27A79C:  LDR.W           R1, =(s_GetDeviceInfo_ptr - 0x27A7A8)
27A7A0:  LDR.W           R8, =(aILjavaLangStri - 0x27A7AE); "(I)Ljava/lang/String;"
27A7A4:  ADD             R1, PC; s_GetDeviceInfo_ptr
27A7A6:  LDR.W           R2, =(aGetandroidbuil - 0x27A7B2); "GetAndroidBuildinfo"
27A7AA:  ADD             R8, PC; "(I)Ljava/lang/String;"
27A7AC:  LDR             R1, [R1]; s_GetDeviceInfo
27A7AE:  ADD             R2, PC; "GetAndroidBuildinfo"
27A7B0:  MOV             R3, R8
27A7B2:  STR             R0, [R1]
27A7B4:  MOV             R1, R5
27A7B6:  LDR             R0, [R4]
27A7B8:  LDR.W           R6, [R0,#0x84]
27A7BC:  MOV             R0, R4
27A7BE:  BLX             R6
27A7C0:  LDR.W           R1, =(s_GetAndroidBuildinfo_ptr - 0x27A7CC)
27A7C4:  LDR.W           R2, =(aObfuGetdevicei - 0x27A7D2); "OBFU_GetDeviceID"
27A7C8:  ADD             R1, PC; s_GetAndroidBuildinfo_ptr
27A7CA:  LDR.W           R3, =(aLjavaLangStrin_8 - 0x27A7D6); "()Ljava/lang/String;"
27A7CE:  ADD             R2, PC; "OBFU_GetDeviceID"
27A7D0:  LDR             R1, [R1]; s_GetAndroidBuildinfo
27A7D2:  ADD             R3, PC; "()Ljava/lang/String;"
27A7D4:  STR             R0, [R1]
27A7D6:  MOV             R1, R5
27A7D8:  LDR             R0, [R4]
27A7DA:  LDR.W           R6, [R0,#0x84]
27A7DE:  MOV             R0, R4
27A7E0:  BLX             R6
27A7E2:  LDR.W           R1, =(s_GetDeviceID_ptr - 0x27A7F0)
27A7E6:  MOV             R3, R8
27A7E8:  LDR.W           R2, =(aFilegetarchive - 0x27A7F2); "FileGetArchiveName"
27A7EC:  ADD             R1, PC; s_GetDeviceID_ptr
27A7EE:  ADD             R2, PC; "FileGetArchiveName"
27A7F0:  LDR             R1, [R1]; s_GetDeviceID
27A7F2:  STR             R0, [R1]
27A7F4:  MOV             R1, R5
27A7F6:  LDR             R0, [R4]
27A7F8:  LDR.W           R6, [R0,#0x84]
27A7FC:  MOV             R0, R4
27A7FE:  BLX             R6
27A800:  LDR.W           R1, =(s_FileGetArchiveName_ptr - 0x27A80E)
27A804:  MOV             R3, R11
27A806:  LDR.W           R2, =(aIsappinstalled - 0x27A810); "IsAppInstalled"
27A80A:  ADD             R1, PC; s_FileGetArchiveName_ptr
27A80C:  ADD             R2, PC; "IsAppInstalled"
27A80E:  LDR             R1, [R1]; s_FileGetArchiveName
27A810:  STR             R0, [R1]
27A812:  MOV             R1, R5
27A814:  LDR             R0, [R4]
27A816:  LDR.W           R6, [R0,#0x84]
27A81A:  MOV             R0, R4
27A81C:  BLX             R6
27A81E:  LDR.W           R1, =(s_IsAppInstalled_ptr - 0x27A82A)
27A822:  LDR.W           R11, =(aLjavaLangStrin_3 - 0x27A830); "(Ljava/lang/String;)V"
27A826:  ADD             R1, PC; s_IsAppInstalled_ptr
27A828:  LDR.W           R2, =(aOpenlink - 0x27A834); "OpenLink"
27A82C:  ADD             R11, PC; "(Ljava/lang/String;)V"
27A82E:  LDR             R1, [R1]; s_IsAppInstalled
27A830:  ADD             R2, PC; "OpenLink"
27A832:  MOV             R3, R11
27A834:  STR             R0, [R1]
27A836:  MOV             R1, R5
27A838:  LDR             R0, [R4]
27A83A:  LDR.W           R6, [R0,#0x84]
27A83E:  MOV             R0, R4
27A840:  BLX             R6
27A842:  LDR.W           R1, =(s_OpenLink_ptr - 0x27A850)
27A846:  MOV             R3, R10
27A848:  LDR.W           R2, =(aLoadallgamesfr - 0x27A852); "LoadAllGamesFromCloud"
27A84C:  ADD             R1, PC; s_OpenLink_ptr
27A84E:  ADD             R2, PC; "LoadAllGamesFromCloud"
27A850:  LDR             R1, [R1]; s_OpenLink
27A852:  STR             R0, [R1]
27A854:  MOV             R1, R5
27A856:  LDR             R0, [R4]
27A858:  LDR.W           R6, [R0,#0x84]
27A85C:  MOV             R0, R4
27A85E:  BLX             R6
27A860:  LDR.W           R1, =(s_LoadAllGamesFromCloud_ptr - 0x27A86C)
27A864:  LDR.W           R2, =(aLoadgamefromcl - 0x27A872); "LoadGameFromCloud"
27A868:  ADD             R1, PC; s_LoadAllGamesFromCloud_ptr
27A86A:  LDR.W           R3, =(aIBLjavaLangStr - 0x27A876); "(I[B)Ljava/lang/String;"
27A86E:  ADD             R2, PC; "LoadGameFromCloud"
27A870:  LDR             R1, [R1]; s_LoadAllGamesFromCloud
27A872:  ADD             R3, PC; "(I[B)Ljava/lang/String;"
27A874:  STR             R0, [R1]
27A876:  MOV             R1, R5
27A878:  LDR             R0, [R4]
27A87A:  LDR.W           R6, [R0,#0x84]
27A87E:  MOV             R0, R4
27A880:  BLX             R6
27A882:  LDR.W           R1, =(s_LoadGameFromCloud_ptr - 0x27A88E)
27A886:  LDR.W           R2, =(aSavegametoclou - 0x27A894); "SaveGameToCloud"
27A88A:  ADD             R1, PC; s_LoadGameFromCloud_ptr
27A88C:  LDR.W           R3, =(aIBiV - 0x27A898); "(I[BI)V"
27A890:  ADD             R2, PC; "SaveGameToCloud"
27A892:  LDR             R1, [R1]; s_LoadGameFromCloud
27A894:  ADD             R3, PC; "(I[BI)V"
27A896:  STR             R0, [R1]
27A898:  MOV             R1, R5
27A89A:  LDR             R0, [R4]
27A89C:  LDR.W           R6, [R0,#0x84]
27A8A0:  MOV             R0, R4
27A8A2:  BLX             R6
27A8A4:  LDR             R1, =(s_SaveGameToCloud_ptr - 0x27A8B0)
27A8A6:  ADR.W           R10, dword_27AC28
27A8AA:  LDR             R2, =(aIscloudavailab - 0x27A8B4); "IsCloudAvailable"
27A8AC:  ADD             R1, PC; s_SaveGameToCloud_ptr
27A8AE:  MOV             R3, R10
27A8B0:  ADD             R2, PC; "IsCloudAvailable"
27A8B2:  LDR             R1, [R1]; s_SaveGameToCloud
27A8B4:  STR             R0, [R1]
27A8B6:  MOV             R1, R5
27A8B8:  LDR             R0, [R4]
27A8BA:  LDR.W           R6, [R0,#0x84]
27A8BE:  MOV             R0, R4
27A8C0:  BLX             R6
27A8C2:  LDR             R1, =(s_IsCloudAvailable_ptr - 0x27A8CA)
27A8C4:  LDR             R2, =(aNewcloudsaveav - 0x27A8CE); "NewCloudSaveAvailable"
27A8C6:  ADD             R1, PC; s_IsCloudAvailable_ptr
27A8C8:  LDR             R3, =(aIZ - 0x27A8D2); "(I)Z"
27A8CA:  ADD             R2, PC; "NewCloudSaveAvailable"
27A8CC:  LDR             R1, [R1]; s_IsCloudAvailable
27A8CE:  ADD             R3, PC; "(I)Z"
27A8D0:  STR             R0, [R1]
27A8D2:  MOV             R1, R5
27A8D4:  LDR             R0, [R4]
27A8D6:  LDR.W           R6, [R0,#0x84]
27A8DA:  MOV             R0, R4
27A8DC:  BLX             R6
27A8DE:  LDR             R1, =(s_NewCloudSaveAvailable_ptr - 0x27A8E8)
27A8E0:  LDR.W           R8, =(aZV - 0x27A8EC); "(Z)V"
27A8E4:  ADD             R1, PC; s_NewCloudSaveAvailable_ptr
27A8E6:  LDR             R2, =(aMoviekeepaspec - 0x27A8F0); "MovieKeepAspectRatio"
27A8E8:  ADD             R8, PC; "(Z)V"
27A8EA:  LDR             R1, [R1]; s_NewCloudSaveAvailable
27A8EC:  ADD             R2, PC; "MovieKeepAspectRatio"
27A8EE:  MOV             R3, R8
27A8F0:  STR             R0, [R1]
27A8F2:  MOV             R1, R5
27A8F4:  LDR             R0, [R4]
27A8F6:  LDR.W           R6, [R0,#0x84]
27A8FA:  MOV             R0, R4
27A8FC:  BLX             R6
27A8FE:  LDR             R1, =(s_MovieKeepAspectRatio_ptr - 0x27A906)
27A900:  LDR             R2, =(aMoviesettext - 0x27A90A); "MovieSetText"
27A902:  ADD             R1, PC; s_MovieKeepAspectRatio_ptr
27A904:  LDR             R3, =(aLjavaLangStrin_9 - 0x27A90E); "(Ljava/lang/String;ZZ)V"
27A906:  ADD             R2, PC; "MovieSetText"
27A908:  LDR             R1, [R1]; s_MovieKeepAspectRatio
27A90A:  ADD             R3, PC; "(Ljava/lang/String;ZZ)V"
27A90C:  STR             R0, [R1]
27A90E:  MOV             R1, R5
27A910:  LDR             R0, [R4]
27A912:  LDR.W           R6, [R0,#0x84]
27A916:  MOV             R0, R4
27A918:  BLX             R6
27A91A:  LDR             R1, =(s_MovieSetText_ptr - 0x27A924)
27A91C:  MOV             R3, R8
27A91E:  LDR             R2, =(aMoviedisplayte - 0x27A926); "MovieDisplayText"
27A920:  ADD             R1, PC; s_MovieSetText_ptr
27A922:  ADD             R2, PC; "MovieDisplayText"
27A924:  LDR             R1, [R1]; s_MovieSetText
27A926:  STR             R0, [R1]
27A928:  MOV             R1, R5
27A92A:  LDR             R0, [R4]
27A92C:  LDR.W           R6, [R0,#0x84]
27A930:  MOV             R0, R4
27A932:  BLX             R6
27A934:  LDR             R1, =(s_MovieDisplayText_ptr - 0x27A93E)
27A936:  MOV             R3, R8
27A938:  LDR             R2, =(aMoviecleartext - 0x27A940); "MovieClearText"
27A93A:  ADD             R1, PC; s_MovieDisplayText_ptr
27A93C:  ADD             R2, PC; "MovieClearText"
27A93E:  LDR             R1, [R1]; s_MovieDisplayText
27A940:  STR             R0, [R1]
27A942:  MOV             R1, R5
27A944:  LDR             R0, [R4]
27A946:  LDR.W           R6, [R0,#0x84]
27A94A:  MOV             R0, R4
27A94C:  BLX             R6
27A94E:  LDR             R1, =(s_MovieClearText_ptr - 0x27A956)
27A950:  LDR             R2, =(aMoviesettextsc - 0x27A95A); "MovieSetTextScale"
27A952:  ADD             R1, PC; s_MovieClearText_ptr
27A954:  LDR             R3, =(aIV - 0x27A95E); "(I)V"
27A956:  ADD             R2, PC; "MovieSetTextScale"
27A958:  LDR             R1, [R1]; s_MovieClearText
27A95A:  ADD             R3, PC; "(I)V"
27A95C:  STR             R0, [R1]
27A95E:  MOV             R1, R5
27A960:  LDR             R0, [R4]
27A962:  LDR.W           R6, [R0,#0x84]
27A966:  MOV             R0, R4
27A968:  BLX             R6
27A96A:  LDR             R1, =(s_MovieTextScale_ptr - 0x27A974)
27A96C:  MOV             R3, R9
27A96E:  LDR             R2, =(aGetspecialbuil - 0x27A976); "GetSpecialBuildType"
27A970:  ADD             R1, PC; s_MovieTextScale_ptr
27A972:  ADD             R2, PC; "GetSpecialBuildType"
27A974:  LDR             R1, [R1]; s_MovieTextScale
27A976:  STR             R0, [R1]
27A978:  MOV             R1, R5
27A97A:  LDR             R0, [R4]
27A97C:  LDR.W           R6, [R0,#0x84]
27A980:  MOV             R0, R4
27A982:  BLX             R6
27A984:  LDR             R1, =(s_GetSpecialBuildType_ptr - 0x27A98E)
27A986:  LDR.W           R8, =(aSendstatevent - 0x27A992); "SendStatEvent"
27A98A:  ADD             R1, PC; s_GetSpecialBuildType_ptr
27A98C:  LDR             R3, =(aLjavaLangStrin_10 - 0x27A996); "(Ljava/lang/String;Z)V"
27A98E:  ADD             R8, PC; "SendStatEvent"
27A990:  LDR             R1, [R1]; s_GetSpecialBuildType
27A992:  ADD             R3, PC; "(Ljava/lang/String;Z)V"
27A994:  MOV             R2, R8
27A996:  STR             R0, [R1]
27A998:  MOV             R1, R5
27A99A:  LDR             R0, [R4]
27A99C:  LDR.W           R6, [R0,#0x84]
27A9A0:  MOV             R0, R4
27A9A2:  BLX             R6
27A9A4:  LDR             R1, =(s_SendStatEvent_ptr - 0x27A9AE)
27A9A6:  MOV             R2, R8
27A9A8:  LDR             R3, =(aLjavaLangStrin_11 - 0x27A9B0); "(Ljava/lang/String;Ljava/lang/String;Lj"...
27A9AA:  ADD             R1, PC; s_SendStatEvent_ptr
27A9AC:  ADD             R3, PC; "(Ljava/lang/String;Ljava/lang/String;Lj"...
27A9AE:  LDR             R1, [R1]; s_SendStatEvent
27A9B0:  STR             R0, [R1]
27A9B2:  MOV             R1, R5
27A9B4:  LDR             R0, [R4]
27A9B6:  LDR.W           R6, [R0,#0x84]
27A9BA:  MOV             R0, R4
27A9BC:  BLX             R6
27A9BE:  LDR             R1, =(s_SendStatEventParam_ptr - 0x27A9C8)
27A9C0:  MOV             R3, R11
27A9C2:  LDR             R2, =(aSendtimedstate - 0x27A9CA); "SendTimedStatEventEnd"
27A9C4:  ADD             R1, PC; s_SendStatEventParam_ptr
27A9C6:  ADD             R2, PC; "SendTimedStatEventEnd"
27A9C8:  LDR             R1, [R1]; s_SendStatEventParam
27A9CA:  STR             R0, [R1]
27A9CC:  MOV             R1, R5
27A9CE:  LDR             R0, [R4]
27A9D0:  LDR.W           R6, [R0,#0x84]
27A9D4:  MOV             R0, R4
27A9D6:  BLX             R6
27A9D8:  LDR             R1, =(s_SendTimedStatEventEnd_ptr - 0x27A9E2)
27A9DA:  MOV             R3, R9
27A9DC:  LDR             R2, =(aGettotalmemory - 0x27A9E4); "GetTotalMemory"
27A9DE:  ADD             R1, PC; s_SendTimedStatEventEnd_ptr
27A9E0:  ADD             R2, PC; "GetTotalMemory"
27A9E2:  LDR             R1, [R1]; s_SendTimedStatEventEnd
27A9E4:  STR             R0, [R1]
27A9E6:  MOV             R1, R5
27A9E8:  LDR             R0, [R4]
27A9EA:  LDR.W           R6, [R0,#0x84]
27A9EE:  MOV             R0, R4
27A9F0:  BLX             R6
27A9F2:  LDR             R1, =(s_getTotalMemory_ptr - 0x27A9FC)
27A9F4:  MOV             R3, R9
27A9F6:  LDR             R2, =(aGetlowthreshho - 0x27A9FE); "GetLowThreshhold"
27A9F8:  ADD             R1, PC; s_getTotalMemory_ptr
27A9FA:  ADD             R2, PC; "GetLowThreshhold"
27A9FC:  LDR             R1, [R1]; s_getTotalMemory
27A9FE:  STR             R0, [R1]
27AA00:  MOV             R1, R5
27AA02:  LDR             R0, [R4]
27AA04:  LDR.W           R6, [R0,#0x84]
27AA08:  MOV             R0, R4
27AA0A:  BLX             R6
27AA0C:  LDR             R1, =(s_getLowThreshhold_ptr - 0x27AA16)
27AA0E:  MOV             R3, R9
27AA10:  LDR             R2, =(aGetavailableme - 0x27AA18); "GetAvailableMemory"
27AA12:  ADD             R1, PC; s_getLowThreshhold_ptr
27AA14:  ADD             R2, PC; "GetAvailableMemory"
27AA16:  LDR             R1, [R1]; s_getLowThreshhold
27AA18:  STR             R0, [R1]
27AA1A:  MOV             R1, R5
27AA1C:  LDR             R0, [R4]
27AA1E:  LDR.W           R6, [R0,#0x84]
27AA22:  MOV             R0, R4
27AA24:  BLX             R6
27AA26:  LDR             R1, =(s_getAvailableMemory_ptr - 0x27AA30)
27AA28:  ADR             R3, off_27ACAC
27AA2A:  LDR             R2, =(aGetscreenwidth - 0x27AA32); "GetScreenWidthInches"
27AA2C:  ADD             R1, PC; s_getAvailableMemory_ptr
27AA2E:  ADD             R2, PC; "GetScreenWidthInches"
27AA30:  LDR             R1, [R1]; s_getAvailableMemory
27AA32:  STR             R0, [R1]
27AA34:  MOV             R1, R5
27AA36:  LDR             R0, [R4]
27AA38:  LDR.W           R6, [R0,#0x84]
27AA3C:  MOV             R0, R4
27AA3E:  BLX             R6
27AA40:  LDR             R1, =(s_getScreenWidthInches_ptr - 0x27AA48)
27AA42:  LDR             R2, =(aGetappid - 0x27AA4C); "GetAppId"
27AA44:  ADD             R1, PC; s_getScreenWidthInches_ptr
27AA46:  LDR             R3, =(aLjavaLangStrin_8 - 0x27AA50); "()Ljava/lang/String;"
27AA48:  ADD             R2, PC; "GetAppId"
27AA4A:  LDR             R1, [R1]; s_getScreenWidthInches
27AA4C:  ADD             R3, PC; "()Ljava/lang/String;"
27AA4E:  STR             R0, [R1]
27AA50:  MOV             R1, R5
27AA52:  LDR             R0, [R4]
27AA54:  LDR.W           R6, [R0,#0x84]
27AA58:  MOV             R0, R4
27AA5A:  BLX             R6
27AA5C:  LDR             R1, =(s_GetAppId_ptr - 0x27AA64)
27AA5E:  LDR             R2, =(aScreensetwakel - 0x27AA68); "ScreenSetWakeLock"
27AA60:  ADD             R1, PC; s_GetAppId_ptr
27AA62:  LDR             R3, =(aZV - 0x27AA6C); "(Z)V"
27AA64:  ADD             R2, PC; "ScreenSetWakeLock"
27AA66:  LDR             R1, [R1]; s_GetAppId
27AA68:  ADD             R3, PC; "(Z)V"
27AA6A:  STR             R0, [R1]
27AA6C:  MOV             R1, R5
27AA6E:  LDR             R0, [R4]
27AA70:  LDR.W           R6, [R0,#0x84]
27AA74:  MOV             R0, R4
27AA76:  BLX             R6
27AA78:  LDR             R1, =(s_ScreenSetWakeLock_ptr - 0x27AA82)
27AA7A:  ADR             R2, aServiceappcomm; "ServiceAppCommand"
27AA7C:  LDR             R3, =(aLjavaLangStrin_12 - 0x27AA84); "(Ljava/lang/String;Ljava/lang/String;)Z"
27AA7E:  ADD             R1, PC; s_ScreenSetWakeLock_ptr
27AA80:  ADD             R3, PC; "(Ljava/lang/String;Ljava/lang/String;)Z"
27AA82:  LDR             R1, [R1]; s_ScreenSetWakeLock
27AA84:  STR             R0, [R1]
27AA86:  MOV             R1, R5
27AA88:  LDR             R0, [R4]
27AA8A:  LDR.W           R6, [R0,#0x84]
27AA8E:  MOV             R0, R4
27AA90:  BLX             R6
27AA92:  LDR             R1, =(s_ServiceAppCommand_ptr - 0x27AA9A)
27AA94:  LDR             R2, =(aServiceappcomm_1 - 0x27AA9E); "ServiceAppCommandValue"
27AA96:  ADD             R1, PC; s_ServiceAppCommand_ptr
27AA98:  LDR             R3, =(aLjavaLangStrin_13 - 0x27AAA2); "(Ljava/lang/String;Ljava/lang/String;)I"
27AA9A:  ADD             R2, PC; "ServiceAppCommandValue"
27AA9C:  LDR             R1, [R1]; s_ServiceAppCommand
27AA9E:  ADD             R3, PC; "(Ljava/lang/String;Ljava/lang/String;)I"
27AAA0:  STR             R0, [R1]
27AAA2:  MOV             R1, R5
27AAA4:  LDR             R0, [R4]
27AAA6:  LDR.W           R6, [R0,#0x84]
27AAAA:  MOV             R0, R4
27AAAC:  BLX             R6
27AAAE:  LDR             R1, =(s_ServiceAppCommandValue_ptr - 0x27AAB8)
27AAB0:  ADR             R2, aServiceappcomm_0; "ServiceAppCommandInt"
27AAB2:  ADR             R3, aLjavaLangStrin; "(Ljava/lang/String;I)Z"
27AAB4:  ADD             R1, PC; s_ServiceAppCommandValue_ptr
27AAB6:  LDR             R1, [R1]; s_ServiceAppCommandValue
27AAB8:  STR             R0, [R1]
27AABA:  MOV             R1, R5
27AABC:  LDR             R0, [R4]
27AABE:  LDR.W           R6, [R0,#0x84]
27AAC2:  MOV             R0, R4
27AAC4:  BLX             R6
27AAC6:  LDR             R1, =(s_ServiceAppCommandInt_ptr - 0x27AAD0)
27AAC8:  ADR             R2, aIsnetworkavail; "isNetworkAvailable"
27AACA:  MOV             R3, R10
27AACC:  ADD             R1, PC; s_ServiceAppCommandInt_ptr
27AACE:  LDR             R1, [R1]; s_ServiceAppCommandInt
27AAD0:  STR             R0, [R1]
27AAD2:  MOV             R1, R5
27AAD4:  LDR             R0, [R4]
27AAD6:  LDR.W           R6, [R0,#0x84]
27AADA:  MOV             R0, R4
27AADC:  BLX             R6
27AADE:  LDR             R1, =(s_IsNetworkAvailable_ptr - 0x27AAE8)
27AAE0:  ADR             R2, aIswifiavailabl; "isWiFiAvailable"
27AAE2:  MOV             R3, R10
27AAE4:  ADD             R1, PC; s_IsNetworkAvailable_ptr
27AAE6:  LDR             R1, [R1]; s_IsNetworkAvailable
27AAE8:  STR             R0, [R1]
27AAEA:  MOV             R1, R5
27AAEC:  LDR             R0, [R4]
27AAEE:  LDR.W           R6, [R0,#0x84]
27AAF2:  MOV             R0, R4
27AAF4:  BLX             R6
27AAF6:  LDR             R1, =(s_IsWifiAvailable_ptr - 0x27AB00)
27AAF8:  ADR             R2, aIstv; "isTV"
27AAFA:  MOV             R3, R10
27AAFC:  ADD             R1, PC; s_IsWifiAvailable_ptr
27AAFE:  LDR             R1, [R1]; s_IsWifiAvailable
27AB00:  STR             R0, [R1]
27AB02:  MOV             R1, R5
27AB04:  LDR             R0, [R4]
27AB06:  LDR.W           R6, [R0,#0x84]
27AB0A:  MOV             R0, R4
27AB0C:  BLX             R6
27AB0E:  LDR             R1, =(s_IsTV_ptr - 0x27AB18)
27AB10:  ADR             R2, aCreatetextbox; "CreateTextBox"
27AB12:  ADR             R3, aIiiiiV; "(IIIII)V"
27AB14:  ADD             R1, PC; s_IsTV_ptr
27AB16:  LDR             R1, [R1]; s_IsTV
27AB18:  STR             R0, [R1]
27AB1A:  MOV             R1, R5
27AB1C:  LDR             R0, [R4]
27AB1E:  LDR.W           R6, [R0,#0x84]
27AB22:  MOV             R0, R4
27AB24:  BLX             R6
27AB26:  LDR             R1, =(s_CreateTextBox_ptr - 0x27AB30)
27AB28:  ADR             R2, aConverttobitma; "ConvertToBitmap"
27AB2A:  ADR             R3, aBiZ; "([BI)Z"
27AB2C:  ADD             R1, PC; s_CreateTextBox_ptr
27AB2E:  LDR             R1, [R1]; s_CreateTextBox
27AB30:  STR             R0, [R1]
27AB32:  MOV             R1, R5
27AB34:  LDR             R0, [R4]
27AB36:  LDR.W           R6, [R0,#0x84]
27AB3A:  MOV             R0, R4
27AB3C:  BLX             R6
27AB3E:  LDR             R1, =(s_ConvertToBitmap_ptr - 0x27AB44)
27AB40:  ADD             R1, PC; s_ConvertToBitmap_ptr
27AB42:  LDR             R1, [R1]; s_ConvertToBitmap
27AB44:  STR             R0, [R1]
27AB46:  ADD             SP, SP, #4
27AB48:  POP.W           {R8-R11}
27AB4C:  POP             {R4-R7,PC}
