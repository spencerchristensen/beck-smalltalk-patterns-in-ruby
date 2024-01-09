# frozen_string_literal: true

class DispatchedInterpretation
end

# Q: How can two objects cooperate when one wishes to conceal its representation?
class BadPrinter
  def print(document)
    case document.format
    when :pdf
      # PDF-specific print logic
    when :word
      # Word-specific print logic
    when :html
      # HTML-specific print logic
    else
      raise "Unknown format"
    end
  end
end

# A: Have the client send a message to the encoded object. Pass a parameter to which the encoded object will send decoded messages.
# To think about it another way, this isn't so much about "where does functionality live" but rather "how is this triggered?". It also enforces Open/Closed, in that Printer remains open for extension (new print_[type] methods) and closed for modification (there is no switch to modify).
class Printer
  def print(document)
    document.print(self)
  end
end

class Document
  # Generic print method, to be overridden by subclasses
  def print(printer)
    raise 'Not implemented'
  end
end

class PDFDocument < Document
  def print(printer)
    printer.print_pdf(self)
  end
end

class WordDocument < Document
  def print(printer)
    printer.print_word(self)
  end
end

class HTMLDocument < Document
  def print(printer)
    printer.print_html(self)
  end
end