defmodule M1 do
	def d1 (archivo)do
    if archivo =~ ".c" and File.exists?(archivo) do
      {:ok, b} = File.read(archivo)
      var = String.trim b
      tokens = Regex.split(~r/\s+/, var)
      #tokens2
      mapa(tokens)
    else
      Error
    end
	end

  def mapa(tokens) do
    dicc = %{int: "int", opbrace: "{", clobrace: "}", opparen: "\(", cloparen: "\)", semico: ";", returnkey: "return",
             mainkey: "main", ints: ~r/^[[:digit:]]+$/}

    for n <- tokens do
      if n == dicc[:int] do
          IO.puts(n)
      else
        if n == dicc[:opbrace] do
          IO.puts(n)
        else
          if n == dicc[:clobrace] do
            IO.puts(n)
          else
            if n == dicc[:opparen] do
              IO.puts(n)
            else
              if n == dicc[:cloparen] do
                IO.puts(n)
              else
                if n == dicc[:semico] do
                  IO.puts(n)
                else
                  if n == dicc[:returnkey] do
                    IO.puts(n)
                  else
                    if n == dicc[:mainkey] do
                      IO.puts(n)
                    else
                      if n == dicc[:ints] do
                        IO.puts(n)
                      else
                        IO.puts("desconocido: \t" <> n)
                        particionamiento = Regex.split(~r{(\()},n, include_captures: true)
                        particionamiento
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
end
