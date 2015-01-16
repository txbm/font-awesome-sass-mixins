module FontAwesomeSassMixins
  module Sass
    class << self
      def load!
          load_sass
      end

      def gem_path
        @gem_path ||= File.expand_path('..', File.dirname(__FILE__))
      end

      def lib_path
        @lib_path ||= File.join(gem_path, 'lib')
      end

      def sass_path
        @sass_path ||= File.join(lib_path, 'sass')
      end

      def load_sass
        require 'sass'

        ::Sass.load_paths << sass_path
      end
    end
  end
end

FontAwesomeSassMixins::Sass.load!