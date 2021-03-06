// #Sireum

package hamr.SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq

import org.sireum._
import art._
import art.DispatchPropertyProtocol._
import art.PortMode._
import hamr._
import hamr.SW_AUGUST.CASE_Filter_AReq_thr_Impl_seL4Nix

object CASE_Filter_AReq extends App {

  val CASE_Filter_AReqBridge : hamr.SW_AUGUST.CASE_Filter_AReq_thr_Impl_Bridge = {
    val filter_in = Port[Base_Types.Bits] (id = 0, name = "SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq_filter_in", mode = EventIn)
    val filter_out_UXAS = Port[Base_Types.Bits] (id = 1, name = "SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq_filter_out_UXAS", mode = EventOut)
    val filter_out_MON_REQ = Port[Base_Types.Bits] (id = 2, name = "SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq_filter_out_MON_REQ", mode = EventOut)

    hamr.SW_AUGUST.CASE_Filter_AReq_thr_Impl_Bridge(
      id = 0,
      name = "SW_Impl_Instance_FLT_AReq_CASE_Filter_AReq",
      dispatchProtocol = Periodic(period = 500),
      dispatchTriggers = None(),

      filter_in = filter_in,
      filter_out_UXAS = filter_out_UXAS,
      filter_out_MON_REQ = filter_out_MON_REQ
    )
  }

  val entryPoints: Bridge.EntryPoints = CASE_Filter_AReqBridge.entryPoints
  val noData: Option[DataContent] = None()

  // filter_in: In EventDataPort Base_Types.Bits
  val filter_in_id: Art.PortId = CASE_Filter_AReqBridge.filter_in.id
  var filter_in_port: Option[DataContent] = noData

  // filter_out_UXAS: Out EventDataPort Base_Types.Bits
  val filter_out_UXAS_id: Art.PortId = CASE_Filter_AReqBridge.filter_out_UXAS.id
  var filter_out_UXAS_port: Option[DataContent] = noData

  // filter_out_MON_REQ: Out EventDataPort Base_Types.Bits
  val filter_out_MON_REQ_id: Art.PortId = CASE_Filter_AReqBridge.filter_out_MON_REQ.id
  var filter_out_MON_REQ_port: Option[DataContent] = noData

  def dispatchStatus(bridgeId: Art.BridgeId): DispatchStatus = {
    return TimeTriggered()
  }

  def getValue(portId: Art.PortId): Option[DataContent] = {
    if(portId == filter_in_id) {
      return filter_in_port
    } else {
      halt(s"Unexpected: CASE_Filter_AReq.getValue called with: ${portId}")
    }
  }

  def receiveInput(eventPortIds: ISZ[Art.PortId], dataPortIds: ISZ[Art.PortId]): Unit = {
    // ignore params

    filter_in_port = CASE_Filter_AReq_thr_Impl_seL4Nix.filter_in_Receive()
  }

  def putValue(portId: Art.PortId, data: DataContent): Unit = {
    if(portId == filter_out_UXAS_id) {
      filter_out_UXAS_port = Some(data)
    } else if(portId == filter_out_MON_REQ_id) {
      filter_out_MON_REQ_port = Some(data)
    } else {
      halt(s"Unexpected: CASE_Filter_AReq.putValue called with: ${portId}")
    }
  }

  def sendOutput(eventPortIds: ISZ[Art.PortId], dataPortIds: ISZ[Art.PortId]): Unit = {
    // ignore params

    if(filter_out_UXAS_port.nonEmpty) {
      CASE_Filter_AReq_thr_Impl_seL4Nix.filter_out_UXAS_Send(filter_out_UXAS_port.get)
      filter_out_UXAS_port = noData
    }

    if(filter_out_MON_REQ_port.nonEmpty) {
      CASE_Filter_AReq_thr_Impl_seL4Nix.filter_out_MON_REQ_Send(filter_out_MON_REQ_port.get)
      filter_out_MON_REQ_port = noData
    }
  }

  def initialiseArchitecture(): Unit = {
    val ad = ArchitectureDescription(
      components = MSZ (CASE_Filter_AReqBridge),
      connections = ISZ ()
    )
    Art.run(ad)
  }

  def initialiseEntryPoint(): Unit = { entryPoints.initialise() }

  def computeEntryPoint(): Unit = { entryPoints.compute() }

  def finaliseEntryPoint(): Unit = { entryPoints.finalise() }

  def main(args: ISZ[String]): Z = {

    // need to touch the following for transpiler
    initialiseArchitecture()
    initialiseEntryPoint()
    computeEntryPoint()
    finaliseEntryPoint()

    // touch each payload/type in case some are only used as a field in a record
    def printDataContent(a: art.DataContent): Unit = { println(s"${a}") }

    printDataContent(Base_Types.Bits_Payload(Base_Types.Bits_empty()))
    printDataContent(art.Empty())

    return 0
  }

  def logInfo(title: String, msg: String): Unit = {
    print(title)
    print(": ")
    println(msg)
  }

  def logError(title: String, msg: String): Unit = {
    eprint(title)
    eprint(": ")
    eprintln(msg)
  }

  def logDebug(title: String, msg: String): Unit = {
    print(title)
    print(": ")
    println(msg)
  }

  def run(): Unit = {}

}
