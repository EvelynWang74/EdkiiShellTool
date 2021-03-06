## @file EdkiiShellToolPkg.dsc
#
# Copyright (c) 2016, Intel Corporation. All rights reserved.<BR>
# This program and the accompanying materials are licensed and made available under
# the terms and conditions of the BSD License that accompanies this distribution.
# The full text of the license may be found at
# http://opensource.org/licenses/bsd-license.php.
#
# THE PROGRAM IS DISTRIBUTED UNDER THE BSD LICENSE ON AN "AS IS" BASIS,
# WITHOUT WARRANTIES OR REPRESENTATIONS OF ANY KIND, EITHER EXPRESS OR IMPLIED.
#
##

[Defines]
  PLATFORM_NAME                  = EdkiiShellToolPkg
  PLATFORM_GUID                  = 445701BF-1386-4DB2-8CFD-6B514F39E931
  PLATFORM_VERSION               = 0.1
  DSC_SPECIFICATION              = 0x00010005
  OUTPUT_DIRECTORY               = Build/EdkiiShellToolPkg
  SUPPORTED_ARCHITECTURES        = IA32|X64
  BUILD_TARGETS                  = DEBUG|RELEASE
  SKUID_IDENTIFIER               = DEFAULT

[LibraryClasses]
  BaseLib|MdePkg/Library/BaseLib/BaseLib.inf
  BaseMemoryLib|MdePkg/Library/BaseMemoryLib/BaseMemoryLib.inf
  MemoryAllocationLib|MdePkg/Library/UefiMemoryAllocationLib/UefiMemoryAllocationLib.inf
  UefiLib|MdePkg/Library/UefiLib/UefiLib.inf
  UefiBootServicesTableLib|MdePkg/Library/UefiBootServicesTableLib/UefiBootServicesTableLib.inf
  UefiRuntimeServicesTableLib|MdePkg/Library/UefiRuntimeServicesTableLib/UefiRuntimeServicesTableLib.inf
  DxeServicesTableLib|MdePkg/Library/DxeServicesTableLib/DxeServicesTableLib.inf
  DevicePathLib|MdePkg/Library/UefiDevicePathLib/UefiDevicePathLib.inf
  PrintLib|MdePkg/Library/BasePrintLib/BasePrintLib.inf
  PciLib|MdePkg/Library/BasePciLibCf8/BasePciLibCf8.inf
  PciCf8Lib|MdePkg/Library/BasePciCf8Lib/BasePciCf8Lib.inf
  PciSegmentLib|MdePkg/Library/BasePciSegmentLibPci/BasePciSegmentLibPci.inf
  IoLib|MdePkg/Library/BaseIoLibIntrinsic/BaseIoLibIntrinsic.inf
  SynchronizationLib|MdePkg/Library/BaseSynchronizationLib/BaseSynchronizationLib.inf
  PcdLib|MdePkg/Library/BasePcdLibNull/BasePcdLibNull.inf
  PeCoffLib|MdePkg/Library/BasePeCoffLib/BasePeCoffLib.inf
  PeCoffExtraActionLib|MdePkg/Library/BasePeCoffExtraActionLibNull/BasePeCoffExtraActionLibNull.inf
  PeCoffGetEntryPointLib|MdePkg/Library/BasePeCoffGetEntryPointLib/BasePeCoffGetEntryPointLib.inf
  CacheMaintenanceLib|MdePkg/Library/BaseCacheMaintenanceLib/BaseCacheMaintenanceLib.inf
  DxeServicesLib|MdePkg/Library/DxeServicesLib/DxeServicesLib.inf
  HobLib|MdePkg/Library/DxeHobLib/DxeHobLib.inf
  OemHookStatusCodeLib|MdeModulePkg/Library/OemHookStatusCodeLibNull/OemHookStatusCodeLibNull.inf

  UefiDriverEntryPoint|MdePkg/Library/UefiDriverEntryPoint/UefiDriverEntryPoint.inf
  DebugLib|IntelFrameworkModulePkg/Library/PeiDxeDebugLibReportStatusCode/PeiDxeDebugLibReportStatusCode.inf
  ReportStatusCodeLib|MdeModulePkg/Library/DxeReportStatusCodeLib/DxeReportStatusCodeLib.inf
  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf

  Tpm2CommandLib|SecurityPkg\Library\Tpm2CommandLib\Tpm2CommandLib.inf
  Tpm2DeviceLib|SecurityPkg\Library\Tpm2DeviceLibTcg2\Tpm2DeviceLibTcg2.inf
  BaseCryptLib|CryptoPkg\Library\BaseCryptLib\BaseCryptLib.inf
  IntrinsicLib|CryptoPkg\Library\IntrinsicLib\IntrinsicLib.inf
  OpensslLib|CryptoPkg\Library\OpensslLib\OpensslLib.inf
  
  SmmChildDumpLib|EdkiiShellToolPkg/EdkiiCoreDatabaseDump/Library/SmmChildDumpLibNull/SmmChildDumpLibNull.inf
  #SmmChildDumpLib|EdkiiShellToolPkg/EdkiiCoreDatabaseDump/Library/SmmChildDumpLibNt32/SmmChildDumpLib.inf

[LibraryClasses.common.PEIM]
  PeimEntryPoint|MdePkg/Library/PeimEntryPoint/PeimEntryPoint.inf
  PeiServicesTablePointerLib|MdePkg/Library/PeiServicesTablePointerLib/PeiServicesTablePointerLib.inf
  PeiServicesLib|MdePkg/Library/PeiServicesLib/PeiServicesLib.inf
  MemoryAllocationLib|MdePkg/Library/PeiMemoryAllocationLib/PeiMemoryAllocationLib.inf
  HobLib|MdePkg/Library/PeiHobLib/PeiHobLib.inf
  ReportStatusCodeLib|MdeModulePkg/Library/PeiReportStatusCodeLib/PeiReportStatusCodeLib.inf

[LibraryClasses.common.DXE_SMM_DRIVER]
  HobLib|MdePkg/Library/DxeHobLib/DxeHobLib.inf
  MemoryAllocationLib|MdePkg/Library/SmmMemoryAllocationLib/SmmMemoryAllocationLib.inf
  SmmServicesTableLib|MdePkg/Library/SmmServicesTableLib/SmmServicesTableLib.inf
  SmmMemLib|MdePkg/Library/SmmMemLib/SmmMemLib.inf
  
[LibraryClasses.common.UEFI_APPLICATION]
  UefiApplicationEntryPoint|MdePkg/Library/UefiApplicationEntryPoint/UefiApplicationEntryPoint.inf
  ShellLib|ShellPkg/Library/UefiShellLib/UefiShellLib.inf
  FileHandleLib|MdePkg/Library/UefiFileHandleLib/UefiFileHandleLib.inf
  ShellCEntryLib|ShellPkg/Library/UefiShellCEntryLib/UefiShellCEntryLib.inf
  UefiHiiServicesLib|MdeModulePkg/Library/UefiHiiServicesLib/UefiHiiServicesLib.inf
  HiiLib|MdeModulePkg/Library/UefiHiiLib/UefiHiiLib.inf
  DebugPrintErrorLevelLib|MdePkg/Library/BaseDebugPrintErrorLevelLib/BaseDebugPrintErrorLevelLib.inf
  SortLib|MdeModulePkg/Library/UefiSortLib/UefiSortLib.inf
  PerformanceLib|MdeModulePkg/Library/DxeSmmPerformanceLib/DxeSmmPerformanceLib.inf

[PcdsFixedAtBuild.common]
  gEfiMdePkgTokenSpaceGuid.PcdDebugPropertyMask|0x1f
  gEfiMdePkgTokenSpaceGuid.PcdDebugPrintErrorLevel|0x80080046
  gEfiMdePkgTokenSpaceGuid.PcdReportStatusCodePropertyMask|0x07
  gEfiMdePkgTokenSpaceGuid.PcdPerformanceLibraryPropertyMask|0x1

[Components]
  EdkiiShellToolPkg/Gcd/Gcd.inf
  EdkiiShellToolPkg/HobList/HobList.inf
  EdkiiShellToolPkg/MemoryTypeInfo/MemoryTypeInfo.inf
  EdkiiShellToolPkg/MemoryAttributesDump/MemoryAttributesDump.inf
  EdkiiShellToolPkg/HstiWsmtDump/HstiWsmtDump.inf
  EdkiiShellToolPkg/EsrtFmpDump/EsrtFmpDump.inf

  EdkiiShellToolPkg/SmmProfileDump/SmmProfileDump.inf
  EdkiiShellToolPkg/PcdDump/PcdDump.inf
  EdkiiShellToolPkg/VtdDump/VtdDump.inf

  EdkiiShellToolPkg/EdkiiCoreDatabaseDump/DxeCoreDump/DxeCoreDumpApp.inf
  EdkiiShellToolPkg/EdkiiCoreDatabaseDump/SmmCoreDump/SmmCoreDump.inf
  EdkiiShellToolPkg/EdkiiCoreDatabaseDump/SmmCoreDump/SmmCoreDumpApp.inf
  EdkiiShellToolPkg/EdkiiCoreDatabaseDump/PeiCoreDump/PeiCoreDump.inf
  EdkiiShellToolPkg/EdkiiCoreDatabaseDump/PeiCoreDump/PeiCoreDumpApp.inf

  EdkiiShellToolPkg/SmiPerf/SmiPerf.inf

  EdkiiShellToolPkg/Tcg2DumpLog/Tcg2DumpLog.inf

[BuildOptions]
  MSVC:DEBUG_*_*_DLINK_FLAGS = /EXPORT:InitializeDriver=$(IMAGE_ENTRY_POINT) /BASE:0x10000 /ALIGN:4096 /FILEALIGN:4096 /SUBSYSTEM:CONSOLE
  MSVC:NOOPT_*_*_DLINK_FLAGS = /EXPORT:InitializeDriver=$(IMAGE_ENTRY_POINT) /BASE:0x10000 /ALIGN:4096 /FILEALIGN:4096 /SUBSYSTEM:CONSOLE
  MSVC:RELEASE_*_*_DLINK_FLAGS = /ALIGN:4096 /FILEALIGN:4096
