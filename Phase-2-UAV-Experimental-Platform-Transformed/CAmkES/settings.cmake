# This file will not be overwritten so is safe to edit

cmake_minimum_required(VERSION 3.8.2)

set(KernelDomainSchedule "${CMAKE_CURRENT_LIST_DIR}/kernel/domain_schedule.c" CACHE INTERNAL "")
set(KernelNumDomains 15 CACHE STRING "" FORCE)
set(CapDLLoaderMaxObjects 90000 CACHE STRING "")