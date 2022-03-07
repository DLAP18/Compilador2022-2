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
             mainkey: "main"}

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
                if n == dicc[:cloparen] do
                  IO.puts(n)
                else
                  if n == dicc[:returnkey] do
                    IO.puts(n)
                  else
                    if n == dicc[:mainkey] do
                      IO.puts(n)
                    else
                        IO.puts("desconocido: \t" <> n)
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
