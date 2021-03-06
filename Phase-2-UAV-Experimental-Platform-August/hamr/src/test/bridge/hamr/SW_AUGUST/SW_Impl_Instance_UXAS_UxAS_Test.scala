package hamr.SW_AUGUST

import art.{ArtNative_Ext, Empty}
import hamr._
import org.sireum._

// This file will not be overwritten so is safe to edit
class SW_Impl_Instance_UXAS_UxAS_Test extends BridgeTestSuite[UxAS_thr_Impl_Bridge](Arch.SW_Impl_Instance_UXAS_UxAS) {
  test("Example Unit Test"){
    executeTest()
  }

  //////////////////////
  // HELPER FUNCTIONS //
  //////////////////////

  // setter for in EventDataPort
  def put_AutomationRequest(value : Base_Types.Bits): Unit = {
    ArtNative_Ext.insertInPortValue(bridge.api.AutomationRequest_Id, Base_Types.Bits_Payload(value))
  }

  // setter for in EventDataPort
  def put_AirVehicleState(value : Base_Types.Bits): Unit = {
    ArtNative_Ext.insertInPortValue(bridge.api.AirVehicleState_Id, Base_Types.Bits_Payload(value))
  }

  // setter for in EventDataPort
  def put_OperatingRegion(value : Base_Types.Bits): Unit = {
    ArtNative_Ext.insertInPortValue(bridge.api.OperatingRegion_Id, Base_Types.Bits_Payload(value))
  }

  // setter for in EventDataPort
  def put_LineSearchTask(value : Base_Types.Bits): Unit = {
    ArtNative_Ext.insertInPortValue(bridge.api.LineSearchTask_Id, Base_Types.Bits_Payload(value))
  }

  // getter for out EventDataPort
  def get_AutomationResponse(): Option[Base_Types.Bits] = {
    val value: Option[Base_Types.Bits] = get_AutomationResponse_payload() match {
      case Some(Base_Types.Bits_Payload(v)) => Some(v)
      case Some(v) => fail(s"Unexpected payload on port AutomationResponse.  Expecting 'Base_Types.Bits_Payload' but received ${v}")
      case _ => None[Base_Types.Bits]()
    }
    return value
  }

  // payload getter for out EventDataPort
  def get_AutomationResponse_payload(): Option[Base_Types.Bits_Payload] = {
    return ArtNative_Ext.observeOutPortValue(bridge.api.AutomationResponse_Id).asInstanceOf[Option[Base_Types.Bits_Payload]]
  }

  def getComponent(): UxAS_thr_Impl_Impl = {
    return bridge.entryPoints.asInstanceOf[UxAS_thr_Impl_Bridge.EntryPoints].component
  }
}
