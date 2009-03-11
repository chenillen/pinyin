require 'singleton'

class Pinyin
  
  # Initialize using Pinyin.new
  # py = Pinyin.new
  def initialize
		ma = File.join(File.dirname(File.expand_path(__FILE__)),'../dict/Mandarin.dat')
		@codes = {}
		File.readlines(ma).each do |line|
			nv = line.split(/\s/)
			@codes[nv[0]] = nv[1]
		end
	end
  
	# Generating permlink using '-' split
	# Show the permlink: Interesting-Ruby-Tidbits-That-Dont-Need-Separate-Posts-17
	# You can also pass a split symbol to_permlink(str, '~')
	def to_permlink(str)
		str_to_pinyin(str,'-')
	end

	# Generating shorter permlink with first letter of each charater
	# Like: zgyh stands for "中国银行"
	def to_pinyin_abbr(str)
		str_to_pinyin(str,'',false,true)
	end

	#第一个字取全部，后面首字母.名称缩写。eg. liudh 刘德华
	def to_pinyin_abbr_else(str)
		str_to_pinyin(str,'',true,nil) 
	end

	#通用情况 tone为取第几声的标识。eg. ni3hao3zhong1guo2
	def to_pinyin(str,separator='',tone=false)
		str_to_pinyin(str,separator,false,false,tone)
	end  	
  	
  	
  # Private Methods Started...
  private

  def get_value(code)
  	@codes[code]
  end

  def str_to_pinyin(str,separator='',abbr_else=false,abbr=false,tone=false)
  		res = []
  		str.unpack('U*').each_with_index do |t,idx|
  			code = sprintf('%x',t).upcase
  			val = get_value(code)
  			#是否找到拼音？
  			if val
  				unless tone
  					val = val.gsub(/\d/,'')
  				end
  				if (abbr and !abbr_else) or (abbr_else and idx!=0)
  					val = val[0..0]
  				end
  				res << val.downcase+separator
  			else
  				tmp = [t].pack('U*')
  				res << tmp if tmp =~ /^[_0-9a-zA-Z\s]*$/ #复原，去除特殊字符,如全角符号等。
  			end
  		end
  		unless separator==''
  			re = Regexp.new("\\#{separator}+")
  			re2 = Regexp.new("\\#{separator}$")
  			return res.join('').gsub(/\s+/,separator).gsub(re,separator).gsub(re2,'')
  		else
  			return res.join('')
  		end
    end
end
	
