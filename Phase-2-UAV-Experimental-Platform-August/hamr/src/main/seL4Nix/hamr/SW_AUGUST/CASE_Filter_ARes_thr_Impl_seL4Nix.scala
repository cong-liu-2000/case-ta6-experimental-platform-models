// #Sireum

package hamr.SW_AUGUST

import org.sireum._
import art._

@ext object CASE_Filter_ARes_thr_Impl_seL4Nix {
  // returns T if seL4's filter_in port is empty, F otherwise 
  def filter_in_IsEmpty(): B = $

  // returns result of dequeuing seL4's filter_in port 
  def filter_in_Receive(): Option[DataContent] = $

  // send payload 'd' to components connected to seL4's filter_out port
  def filter_out_Send(d: DataContent): Unit = $
}
