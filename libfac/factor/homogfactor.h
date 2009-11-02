///////////////////////////////////////////////////////////////////////////////
// emacs edit mode for this file is -*- C++ -*-
// $Id$
///////////////////////////////////////////////////////////////////////////////
#ifndef HFACTOR_H
#define HFACTOR_H
CFList  get_Terms( const CanonicalForm & f );
CFFList HomogFactor( const CanonicalForm & g, const CanonicalForm  & minpoly, const int Mainvar );
#endif /* HFACTOR_H */

////////////////////////////////////////////////////////////
/*
$Log: not supported by cvs2svn $
Revision 1.5  2005/12/05 15:47:32  Singular
*hannes: is_homogeneous -> factory: isHomogeneous

Revision 1.4  2002/08/19 11:11:34  Singular
* hannes/pfister: alg_gcd etc.

Revision 1.3  1997/09/12 07:19:58  Singular
* hannes/michael: libfac-0.3.0

Revision 1.2  1997/04/25 22:14:46  michael
Version for libfac-0.2.1

*/
