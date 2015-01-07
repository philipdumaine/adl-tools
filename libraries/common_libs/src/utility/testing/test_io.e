indexing
	component:   "openEHR Reusable Libraries"
      description: "Test input/output streams"
	keywords:    "test"

	author:      "Thomas Beale"
	support:     "Ocean Informatics <support@OceanInformatics.biz>"
	copyright:   "Copyright (c) 2004 Ocean Informatics Pty Ltd"
	license:     "See notice at bottom of class"

	file:        "$URL$"
	revision:    "$LastChangedRevision$"
	last_change: "$LastChangedDate$"

class TEST_IO

feature -- Access

	streams: HASH_TABLE [TEST_STREAM, STRING] is 
			-- a set of names streams
		once
			create Result.make(0)
		end

	io_message: TEST_STREAM is
		do
			Result := streams.item("message")
		end

	io_output: TEST_STREAM is
		do
			Result := streams.item("output")
		end

feature -- Modify

	set_default_streams(msg_stream, out_stream: TEST_STREAM) is
		require
			Msg_stream_valid: msg_stream /= Void
			Out_stream_valid: out_stream /= Void
		do
			streams.put(msg_stream, "message")
			streams.put(out_stream, "output")
		end

	add_stream(stream_name: STRING; a_stream: TEST_STREAM) is
		require
			stream_name_valid: stream_name /= Void and then not streams.has(stream_name)
			stream_valid: a_stream /= Void
		do
			streams.put(a_stream, stream_name)
		end

end

--|
--| ***** BEGIN LICENSE BLOCK *****
--| Version: MPL 1.1/GPL 2.0/LGPL 2.1
--|
--| The contents of this file are subject to the Mozilla Public License Version
--| 1.1 (the 'License'); you may not use this file except in compliance with
--| the License. You may obtain a copy of the License at
--| http://www.mozilla.org/MPL/
--|
--| Software distributed under the License is distributed on an 'AS IS' basis,
--| WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
--| for the specific language governing rights and limitations under the
--| License.
--|
--| The Original Code is test_io.e.
--|
--| The Initial Developer of the Original Code is Thomas Beale.
--| Portions created by the Initial Developer are Copyright (C) 2003-2004
--| the Initial Developer. All Rights Reserved.
--|
--| Contributor(s):
--|
--| Alternatively, the contents of this file may be used under the terms of
--| either the GNU General Public License Version 2 or later (the 'GPL'), or
--| the GNU Lesser General Public License Version 2.1 or later (the 'LGPL'),
--| in which case the provisions of the GPL or the LGPL are applicable instead
--| of those above. If you wish to allow use of your version of this file only
--| under the terms of either the GPL or the LGPL, and not to allow others to
--| use your version of this file under the terms of the MPL, indicate your
--| decision by deleting the provisions above and replace them with the notice
--| and other provisions required by the GPL or the LGPL. If you do not delete
--| the provisions above, a recipient may use your version of this file under
--| the terms of any one of the MPL, the GPL or the LGPL.
--|
--| ***** END LICENSE BLOCK *****
--|