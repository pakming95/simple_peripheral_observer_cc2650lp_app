/** \mainpage Driver Overview
  *
  * \section section_drv_info Driver Information
  * This Sensor Controller Interface driver has been generated by the Texas Instruments Sensor Controller
  * Studio tool:
  * - <b>Project name</b>:     PIR Sensor reading
  * - <b>Project file</b>:     C:/Users/richa/Documents/Texas Instruments/Sensor Controller Studio/examples/pir/pir.scp
  * - <b>Code prefix</b>:      -
  * - <b>Operating system</b>: TI-RTOS
  * - <b>Tool version</b>:     1.4.0.42970
  * - <b>Tool patches</b>:     None
  * - <b>Target chip</b>:      CC2650, revision -, package QFN48 7x7 RGZ
  * - <b>Created</b>:          2017-03-06 19:26:10.039
  * - <b>Computer</b>:         LAPTOP-MCPQP7PU
  * - <b>User</b>:             richa
  *
  * No user-provided resource definitions were used to generate this driver.
  *
  * No user-provided procedure definitions were used to generate this driver.
  *
  * Do not edit the generated source code files other than temporarily for debug purposes. Any
  * modifications will be overwritten by the Sensor Controller Studio when generating new output.
  *
  * \section section_drv_modules Driver Modules
  * The driver is divided into three modules:
  * - \ref module_scif_generic_interface, providing the API for:
  *     - Initializing and uninitializing the driver
  *     - Task control (for starting, stopping and executing Sensor Controller tasks)
  *     - Task data exchange (for producing input data to and consume output data from Sensor Controller
  *       tasks)
  * - \ref module_scif_driver_setup, containing:
  *     - The AUX RAM image (Sensor Controller code and data)
  *     - I/O mapping information
  *     - Task data structure information
  *     - Driver setup data, to be used in the driver initialization
  *     - Project-specific functionality
  * - \ref module_scif_osal, for flexible OS support:
  *     - Interfaces with the selected operating system
  *
  * It is possible to use output from multiple Sensor Controller Studio projects in one application. Only
  * one driver setup may be active at a time, but it is possible to switch between these setups. When
  * using this option, there is one instance of the \ref module_scif_generic_interface and
  * \ref module_scif_osal modules, and multiple instances of the \ref module_scif_driver_setup module.
  * This requires that:
  * - The outputs must be generated using the same version of Sensor Controller Studio
  * - The outputs must use the same operating system
  * - The outputs must use different source code prefixes (inserted into all globals of the
  *   \ref module_scif_driver_setup)
  *
  *
  * \section section_project_info Project Description
  * This code initialises the digital pin to take in readings from the pir sensor to count whether
  * movement is detected.
  *
  *
  * \subsection section_io_mapping I/O Mapping
  * Task I/O functions are mapped to the following pins:
  * - PIR:
  *     - <b>I: read sensor values from the pir sensor </b>: DIO23
  *     - <b>I: Led to indicate that sensor can be read</b>: DIO24
  *     - <b>I: cc2650 launchpad LED</b>: DIO6
  *
  *
  * \section section_task_info Task Description(s)
  * This driver supports the following task(s):
  *
  *
  * \subsection section_task_desc_pir PIR
  * No description entered
  *
  */




/** \addtogroup module_scif_driver_setup Driver Setup
  *
  * \section section_driver_setup_overview Overview
  *
  * This driver setup instance has been generated for:
  * - <b>Project name</b>:     PIR Sensor reading
  * - <b>Code prefix</b>:      -
  *
  * The driver setup module contains the generated output from the Sensor Controller Studio project:
  * - Location of task control and scheduling data structures in AUX RAM
  * - The AUX RAM image, and the size the image
  * - Task data structure information (location, size and buffer count)
  * - I/O pin mapping translation table
  * - Task resource initialization and uninitialization functions
  *
  * @{
  */
#ifndef SCIF_H
#define SCIF_H

#include <stdint.h>
#include <stdbool.h>
#include "scif_framework.h"
#include "scif_osal_tirtos.h"


/// Target chip name
#define SCIF_TARGET_CHIP_NAME_CC2650
/// Target chip package
#define SCIF_TARGET_CHIP_PACKAGE_QFN48_7X7_RGZ

/// Number of tasks implemented by this driver
#define SCIF_TASK_COUNT 1

/// PIR: Task ID
#define SCIF_PIR_TASK_ID 0


/// PIR I/O mapping: read sensor values from the pir sensor 
#define SCIF_PIR_DIO_I_PIR_READ 23
/// PIR I/O mapping: Led to indicate that sensor can be read
#define SCIF_PIR_DIO_I_LED_INDICATOR 24
/// PIR I/O mapping: cc2650 launchpad LED
#define SCIF_PIR_DIO_I_LAUNCHPAD_LED 6


// All shared data structures in AUX RAM need to be packed
#pragma pack(push, 2)


/// PIR: Task output data structure
typedef struct {
    uint16_t canreset; ///< flag to determine whther cc2650.
    uint16_t counter;  ///< counts how many people washes their hands
} SCIF_PIR_OUTPUT_T;


/// Sensor Controller task data (configuration, input buffer(s), output buffer(s) and internal state)
typedef struct {
    struct {
        SCIF_PIR_OUTPUT_T output;
    } pir;
} SCIF_TASK_DATA_T;

/// Sensor Controller task generic control (located in AUX RAM)
#define scifTaskData    (*((volatile SCIF_TASK_DATA_T*) 0x400E00E8))


// Initialized internal driver data, to be used in the call to \ref scifInit()
extern const SCIF_DATA_T scifDriverSetup;


// Restore previous struct packing setting
#pragma pack(pop)


// AUX I/O re-initialization functions
void scifReinitTaskIo(uint32_t bvTaskIds);


// No task-specific API available


#endif
//@}


// Generated by LAPTOP-MCPQP7PU at 2017-03-06 19:26:10.039
