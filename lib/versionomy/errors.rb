# -----------------------------------------------------------------------------
# 
# Versionomy exceptions
# 
# -----------------------------------------------------------------------------
# Copyright 2008-2009 Daniel Azuma
# 
# All rights reserved.
# 
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# 
# * Redistributions of source code must retain the above copyright notice,
#   this list of conditions and the following disclaimer.
# * Redistributions in binary form must reproduce the above copyright notice,
#   this list of conditions and the following disclaimer in the documentation
#   and/or other materials provided with the distribution.
# * Neither the name of the copyright holder, nor the names of any other
#   contributors to this software, may be used to endorse or promote products
#   derived from this software without specific prior written permission.
# 
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
# ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS BE
# LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
# CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
# CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
# POSSIBILITY OF SUCH DAMAGE.
# -----------------------------------------------------------------------------
;


module Versionomy
  
  
  # This is a namespace for errors that can be thrown by Versionomy.
  
  module Errors
    
    
    # Base class for all Versionomy exceptions
    
    class VersionomyError < ::RuntimeError
    end
    
    
    # This exception is raised if parsing failed.
    
    class ParseError < VersionomyError
    end
    
    
    # This exception is raised if unparsing failed.
    
    class UnparseError < VersionomyError
    end
    
    
    # This exception is raised if you try to set a value that is not
    # allowed by the schema.
    
    class IllegalValueError < VersionomyError
    end
    
    
    # This exception is raised if you try to perform a comparison
    # between incompatible schemas.
    
    class SchemaMismatchError < VersionomyError
    end
    
    
    # Base class for all Versionomy schema creation exceptions
    
    class SchemaCreationError < VersionomyError
    end
    
    
    # This exception is raised during schema creation if you try to add
    # the same symbol twice to the same symbolic field.
    
    class SymbolRedefinedError < SchemaCreationError
    end
    
    
    # This exception is raised during schema creation if you try to
    # create two fields covering overlapping ranges.
    
    class RangeOverlapError < SchemaCreationError
    end
    
    
    # This exception is raised during schema creation if the range
    # specification cannot be interpreted.
    
    class RangeSpecificationError < SchemaCreationError
    end
    
    
    # This exception is raised during schema creation if you try to
    # add a symbol to a non-symbolic schema.
    
    class TypeMismatchError < SchemaCreationError
    end
    
    
    # This exception is raised during schema creation if you try to
    # create a circular dependency.
    
    class CircularDescendantError < SchemaCreationError
    end
    
    
    # Base class for all Versionomy format creation exceptions.
    
    class FormatCreationError < VersionomyError
    end
    
    
    # This exception is raised if you try to register a format
    # with a name that has already been used.
    
    class FormatRedefinedError < VersionomyError
    end
    
    
    # Raised by the Formats registry if you try to retrieve a format with
    # an unrecognized name in strict mode.
    
    class UnknownFormatError < VersionomyError
    end
    
    
  end
  
end
