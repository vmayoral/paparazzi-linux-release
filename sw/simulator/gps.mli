(*
 *  $Id: gps.mli 1310 2006-11-16 09:42:00Z hecto $
 *
 * Basic GPS parameters simulation
 *  
 * Copyright (C) 2004 Pascal Brisset, Antoine Drouin
 *
 * This file is part of paparazzi.
 *
 * paparazzi is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation; either version 2, or (at your option)
 * any later version.
 *
 * paparazzi is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with paparazzi; see the file COPYING.  If not, write to
 * the Free Software Foundation, 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA. 
 *
 *)

type state = {
    mutable availability : bool;
    wgs84 : Latlong.geographic;
    alt : float;
    time : float;
    climb : float;
    gspeed : float;
    course : float; (** North = 0 *)
  }
val state : Latlong.geographic ref -> float ref -> (float * float * float -> float -> state)
(** [state pos0 alt0] Returns a function which must be called with
an updated position [xyz] and time [t] *)
