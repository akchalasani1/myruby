module FileUtils
  include FileUtils::StreamUtils_

  DryRun = FileUtils::DryRun
  Entry_ = FileUtils::Entry_
  LOW_METHODS = [:chdir, :getwd, :pwd, :commands, :identical?, :private_module_function, :cd, :uptodate?, :options_of, :have_option?, :options, :copy_stream, :remove_file, :copy_file, :copy_entry, :collect_method, :remove_entry_secure, :remove_entry, :remove_dir, :compare_file, :compare_stream, :cmp]
  LowMethods = FileUtils::LowMethods
  METHODS = [:chdir, :getwd, :pwd, :mkdir, :rmdir, :chmod_R, :chown_R, :touch, :identical?, :mkdir_p, :chown, :cd, :uptodate?, :link, :symlink, :chmod, :mkpath, :makedirs, :ln, :install, :ln_s, :copy_stream, :cp, :ln_sf, :remove_file, :remove, :copy, :copy_file, :copy_entry, :cp_r, :mv, :remove_entry_secure, :remove_entry, :move, :rm, :rm_f, :safe_unlink, :rm_r, :rm_rf, :rmtree, :remove_dir, :compare_file, :compare_stream, :cmp]
  NoWrite = FileUtils::NoWrite
  OPT_TABLE = {"copy_stream"=>[], "identical?"=>[], "chmod"=>[:noop, :verbose], "chown"=>[:noop, :verbose], "link"=>[:force, :noop, :verbose], "symlink"=>[:force, :noop, :verbose], "chdir"=>[:verbose], "getwd"=>[], "pwd"=>[], "mkdir"=>[:mode, :noop, :verbose], "rmdir"=>[:parents, :noop, :verbose], "mkdir_p"=>[:mode, :noop, :verbose], "install"=>[:mode, :owner, :group, :preserve, :noop, :verbose], "remove"=>[:force, :noop, :verbose], "cd"=>[:verbose], "uptodate?"=>[], "mkpath"=>[:mode, :noop, :verbose], "makedirs"=>[:mode, :noop, :verbose], "ln"=>[:force, :noop, :verbose], "remove_file"=>[], "ln_s"=>[:force, :noop, :verbose], "ln_sf"=>[:noop, :verbose], "cp"=>[:preserve, :noop, :verbose], "copy_file"=>[], "copy"=>[:preserve, :noop, :verbose], "cp_r"=>[:preserve, :noop, :verbose, :dereference_root, :remove_destination], "copy_entry"=>[], "mv"=>[:force, :noop, :verbose, :secure], "remove_entry_secure"=>[], "remove_entry"=>[], "move"=>[:force, :noop, :verbose, :secure], "rm"=>[:force, :noop, :verbose], "rm_f"=>[:noop, :verbose], "safe_unlink"=>[:noop, :verbose], "rm_r"=>[:force, :noop, :verbose, :secure], "rm_rf"=>[:noop, :verbose, :secure], "rmtree"=>[:noop, :verbose, :secure], "remove_dir"=>[], "compare_file"=>[], "compare_stream"=>[], "cmp"=>[], "chmod_R"=>[:noop, :verbose, :force], "chown_R"=>[:noop, :verbose, :force], "touch"=>[:noop, :verbose, :mtime, :nocreate]}
  StreamUtils_ = FileUtils::StreamUtils_
  Verbose = FileUtils::Verbose

  def self.cd(arg0, arg1, arg2, *rest)
  end

  def self.chdir(arg0, arg1, arg2, *rest)
  end

  def self.chmod(arg0, arg1, arg2, arg3, *rest)
  end

  def self.chmod_R(arg0, arg1, arg2, arg3, *rest)
  end

  def self.chown(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def self.chown_R(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def self.cmp(arg0, arg1)
  end

  def self.collect_method(arg0)
  end

  def self.commands
  end

  def self.compare_file(arg0, arg1)
  end

  def self.compare_stream(arg0, arg1)
  end

  def self.copy(arg0, arg1, arg2, arg3, *rest)
  end

  def self.copy_entry(arg0, arg1, arg2, arg3, *rest)
  end

  def self.copy_file(arg0, arg1, arg2, arg3, *rest)
  end

  def self.copy_stream(arg0, arg1)
  end

  def self.cp(arg0, arg1, arg2, arg3, *rest)
  end

  def self.cp_r(arg0, arg1, arg2, arg3, *rest)
  end

  def self.getwd
  end

  def self.have_option?(arg0, arg1)
  end

  def self.identical?(arg0, arg1)
  end

  def self.install(arg0, arg1, arg2, arg3, *rest)
  end

  def self.link(arg0, arg1, arg2, arg3, *rest)
  end

  def self.ln(arg0, arg1, arg2, arg3, *rest)
  end

  def self.ln_s(arg0, arg1, arg2, arg3, *rest)
  end

  def self.ln_sf(arg0, arg1, arg2, arg3, *rest)
  end

  def self.makedirs(arg0, arg1, arg2, *rest)
  end

  def self.mkdir(arg0, arg1, arg2, *rest)
  end

  def self.mkdir_p(arg0, arg1, arg2, *rest)
  end

  def self.mkpath(arg0, arg1, arg2, *rest)
  end

  def self.move(arg0, arg1, arg2, arg3, *rest)
  end

  def self.mv(arg0, arg1, arg2, arg3, *rest)
  end

  def self.options
  end

  def self.options_of(arg0)
  end

  def self.private_module_function(arg0)
  end

  def self.pwd
  end

  def self.remove(arg0, arg1, arg2, *rest)
  end

  def self.remove_dir(arg0, arg1, arg2, *rest)
  end

  def self.remove_entry(arg0, arg1, arg2, *rest)
  end

  def self.remove_entry_secure(arg0, arg1, arg2, *rest)
  end

  def self.remove_file(arg0, arg1, arg2, *rest)
  end

  def self.rm(arg0, arg1, arg2, *rest)
  end

  def self.rm_f(arg0, arg1, arg2, *rest)
  end

  def self.rm_r(arg0, arg1, arg2, *rest)
  end

  def self.rm_rf(arg0, arg1, arg2, *rest)
  end

  def self.rmdir(arg0, arg1, arg2, *rest)
  end

  def self.rmtree(arg0, arg1, arg2, *rest)
  end

  def self.safe_unlink(arg0, arg1, arg2, *rest)
  end

  def self.symlink(arg0, arg1, arg2, arg3, *rest)
  end

  def self.touch(arg0, arg1, arg2, *rest)
  end

  def self.uptodate?(arg0, arg1)
  end



  protected


  private

  def apply_mask(arg0, arg1, arg2, arg3)
  end

  def cd(arg0, arg1, arg2, *rest)
  end

  def chdir(arg0, arg1, arg2, *rest)
  end

  def chmod(arg0, arg1, arg2, arg3, *rest)
  end

  def chmod_R(arg0, arg1, arg2, arg3, *rest)
  end

  def chown(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def chown_R(arg0, arg1, arg2, arg3, arg4, *rest)
  end

  def cmp(arg0, arg1)
  end

  def compare_file(arg0, arg1)
  end

  def compare_stream(arg0, arg1)
  end

  def copy(arg0, arg1, arg2, arg3, *rest)
  end

  def copy_entry(arg0, arg1, arg2, arg3, *rest)
  end

  def copy_file(arg0, arg1, arg2, arg3, *rest)
  end

  def copy_stream(arg0, arg1)
  end

  def cp(arg0, arg1, arg2, arg3, *rest)
  end

  def cp_r(arg0, arg1, arg2, arg3, *rest)
  end

  def fu_each_src_dest(arg0, arg1)
  end

  def fu_each_src_dest0(arg0, arg1)
  end

  def fu_get_gid(arg0)
  end

  def fu_get_uid(arg0)
  end

  def fu_have_symlink?
  end

  def fu_list(arg0)
  end

  def fu_mkdir(arg0, arg1)
  end

  def fu_mode(arg0, arg1)
  end

  def fu_output_message(arg0)
  end

  def fu_same?(arg0, arg1)
  end

  def fu_stat_identical_entry?(arg0, arg1)
  end

  def getwd
  end

  def identical?(arg0, arg1)
  end

  def install(arg0, arg1, arg2, arg3, *rest)
  end

  def link(arg0, arg1, arg2, arg3, *rest)
  end

  def ln(arg0, arg1, arg2, arg3, *rest)
  end

  def ln_s(arg0, arg1, arg2, arg3, *rest)
  end

  def ln_sf(arg0, arg1, arg2, arg3, *rest)
  end

  def makedirs(arg0, arg1, arg2, *rest)
  end

  def mkdir(arg0, arg1, arg2, *rest)
  end

  def mkdir_p(arg0, arg1, arg2, *rest)
  end

  def mkpath(arg0, arg1, arg2, *rest)
  end

  def mode_to_s(arg0)
  end

  def move(arg0, arg1, arg2, arg3, *rest)
  end

  def mv(arg0, arg1, arg2, arg3, *rest)
  end

  def pwd
  end

  def remove(arg0, arg1, arg2, *rest)
  end

  def remove_dir(arg0, arg1, arg2, *rest)
  end

  def remove_entry(arg0, arg1, arg2, *rest)
  end

  def remove_entry_secure(arg0, arg1, arg2, *rest)
  end

  def remove_file(arg0, arg1, arg2, *rest)
  end

  def remove_trailing_slash(arg0)
  end

  def rename_cannot_overwrite_file?
  end

  def rm(arg0, arg1, arg2, *rest)
  end

  def rm_f(arg0, arg1, arg2, *rest)
  end

  def rm_r(arg0, arg1, arg2, *rest)
  end

  def rm_rf(arg0, arg1, arg2, *rest)
  end

  def rmdir(arg0, arg1, arg2, *rest)
  end

  def rmtree(arg0, arg1, arg2, *rest)
  end

  def safe_unlink(arg0, arg1, arg2, *rest)
  end

  def symbolic_modes_to_i(arg0, arg1)
  end

  def symlink(arg0, arg1, arg2, arg3, *rest)
  end

  def touch(arg0, arg1, arg2, *rest)
  end

  def uptodate?(arg0, arg1)
  end

  def user_mask(arg0)
  end

end
