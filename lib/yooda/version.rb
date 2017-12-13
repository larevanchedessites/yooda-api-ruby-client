module Yooda

  class Version
    MAJOR = 0 unless defined? Yooda::Version::MAJOR
    MINOR = 1 unless defined? Yooda::Version::MINOR
    PATCH = 4 unless defined? Yooda::Version::PATCH
    PRE = nil unless defined? Yooda::Version::PRE

    class << self

      # @return [String]
      def to_s
        [MAJOR, MINOR, PATCH, PRE].compact.join('.')
      end

    end

  end

  VERSION = Version.to_s.freeze

end
